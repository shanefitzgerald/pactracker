function animationHover(element, animation){
	element = $(element);
	element.hover(
		function() {
    		element.addClass('animated ' + animation);        
		},
		function(){
    		//wait for animation to finish before removing classes
    		window.setTimeout( function(){
        		element.removeClass('animated ' + animation);
    		}, 2000);        
});

}
//When DOM loaded we attach click event to button
$(document).ready(function() {
  // This is the var equals total amount donated to candidates
  var demArray = [];
  var repArray = [];
  var names =[];
  var senatorKeyContributions = [];   
  var twentyTotalPacSenatorNameArray = [];
  var totalContributionsArray = [];
  var individualDonationsArray = [];
  var pacDonationsArray = []; 
  	
        //start ajax request
    	$.ajax({
        	url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/candidates/leaders/pac-total.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
            //force to handle it as jsonp by adding 'callback='
        	dataType: "jsonp",
          success: function(data1) {                   
    			for (var key in data1.results) {
					$('#twentyTotalPac').append('<div id="' + data1.results[key].party + '" class="senator">' + data1.results[key].name  + '</br>' + 
           			
           			'Total Contributions: ' + '$' + data1.results[key].total_from_pacs + '</br>' +
           			
           			'Data1 Coverage Dates: ' + data1.results[key].date_coverage_from + " - " + data1.results[key].date_coverage_to + '</div>')
					//animation script					
          			// push total contributions into an array to be used in D3
 					totalContributionsArray.push(data1.results[key].total_contributions);
 					// make contributions numbers integers not strings in the array totalContributionsArray will be used in D3
 					totalContributionsArray = totalContributionsArray.map(function (x) { 
 						return parseInt(x); 
					});
					// push total individual donations into an array
					individualDonationsArray.push(data1.results[key].total_from_individuals);
					// make individual integers and not strings in array
					individualDonationsArray = individualDonationsArray.map(function (x) {
						return parseInt(x);
					});
					// push total pac donations to a candidate from nytimes api to an array
					pacDonationsArray.push(data1.results[key].total_from_pacs)
					// make the strings in pacDonationsArray into integers
					pacDonationsArray = pacDonationsArray.map(function (x) {
						return parseInt(x);
					});
					// make an array of the names for use in D3
					twentyTotalPacSenatorNameArray.push(data1.results[key].name);
					// combining twentyTotalPacSenatorNameArray with totalContributionsArray for D3
					


          		}  

						$('.senator').each(function() {
        					animationHover(this, 'rubberBand');
    					});

				setTimeout(function(){
							var r = 600, // setting this up as a "side" for our canvas
					format = d3.format(",d"), // formats as integer
					fill = d3.scale.category20c(); // colors by ordinal scale

					var bubble = d3.layout.pack() // pack layout lends to bubble chart
						.sort(null) // runs a comparator if you want to do some sorting (we aren't here)
						.size([r, r]) // defaults to 1x1 unless this is specified [x, y]
						.padding(2); // how much space between each bubble

					var vis = d3.selectAll("#bubblechart").append("svg") // puts a svg inside of the bubblechart div
						.attr("width", r) // svg canvas is r wide
						.attr("height", r) // svg canvas is r tall (it's a square)
						.attr("class", "bubble"); // add class "bubble" to svg 

					var node = vis.selectAll("g.node")  // setting up nodes with a select within the svg we set up when we declared vis above
						.data(bubble.nodes(classes(data1)) // looks more complex than it is -- we're flattening stuff via bubble (above) and classes (below)
						.filter(function(d) { return !d.children; }))
					  	.enter().append("g") // g is a D3 thing that groups svg shapes
					  	 .attr("class", "node")
					  	 .attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")";  }); // this gives us the spiraling effect of the bubbles by translating the position (x,y) of each next node


					  node.append("title") // adds a title attribute to each node -- here, it populates that with the string, "My favorite flavor is ___" and incorporates the flavor of each node 
					  	.text(function(d) { return d.candidateName; });

					  node.append("circle") // makes these visuals bubbles
					  	.attr("r", function(d) { return d.r; }) // sets the radius of each bubble
					  	.style("fill", function(d) { if(d.candidateParty=="REP") {return fill("red")} else {return fill("blue")} }); // fills the bubble with the color appropriate to the package

					  node.append("text") // add a text label on top of each bubble
					  	.attr("text-anchor", "middle") // places text in middle of node
					  	.attr("dy", ".1em") // sizes line height
					  	.text(function(d) { return d.candidateName;}); // text is equal to name

					  node.append("text") // add a text label on top of each bubble
					  	.attr("text-anchor", "middle") // places text in middle of node
					  	.attr("dy", ".9em") // sizes line height
					  	.text(function(d) { return d.value;}); // text is equal to name

					// Awesome function courtesy of Mike Bostock/Jeff Heer
					// Returns a flattened hierarchy containing all leaf nodes under the root.

					function classes(root) {
					      var classes = [];

					      function recurse(item, node) {
					      	console.log("results");
					      	// console.log(node.results[key])
					      	for (var key in node.results) {
					        if (node.children) node.children.forEach(function(child) { recurse(node.results[key], child); });
					        else classes.push({candidateParty: node.results[key].party, candidateName: node.results[key].name, value: node.results[key].total_contributions});
					      }
					  }
					      recurse(null, root);
					      // console.log("below this: classes");
					      // console.log(classes);
					      return {children: classes};

		    }
				},10000);

			}

        });
		   	$.ajax({
        	url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/candidates/leaders/receipts-total.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
            //force to handle it as jsonp by adding 'callback='
        	dataType: "jsonp",
          success: function(data) {                   
    			for (var key in data.results) {
					$('#twentyTotal').append('<div id="' + data.results[key].party + '" class="senator">' + data.results[key].name  + '</br>' + 
           			
           			'Total Contributions: ' + '$' + data.results[key].total_contributions + '</br>' +
           			
           			'Data Coverage Dates: ' + data.results[key].date_coverage_from + " - " + data.results[key].date_coverage_to + '</div>')
					
					if (data.results[key].party == "REP") {
						repArray.push(data.results[key].total_contributions);
 					} else {
						demArray.push(data.results[key].total_contributions);
 					}
 					demArray = demArray.map(function (x) { 
 						return parseInt(x); 
 					});
          // push total contributions into an array to be used in D3
 					totalContributionsArray.push(data.results[key].total_contributions);
 					// make contributions numbers integers not strings in the array totalContributionsArray will be used in D3
 					totalContributionsArray = totalContributionsArray.map(function (x) { 
 						return parseInt(x); 
					});
					// push names into empty array
					names.push(data.results[key].name);
					
					// push total pac donations to a candidate from nytimes api to an array
					pacDonationsArray.push(data.results[key].total_from_pacs)
					// make the strings in pacDonationsArray into integers
					pacDonationsArray = pacDonationsArray.map(function (x) {
						return parseInt(x);
					});
					// make an array of the names for use in D3
					twentyTotalPacSenatorNameArray.push(data.results[key].name);
					// combining twentyTotalPacSenatorNameArray with totalContributionsArray for D3
          }
          // sum the array of Dems
 					var myData = new Array(demArray);

					var demSum = myData.reduce(function (a, b) {
					    return a + b[1];
					}, 0);
 					repArray = repArray.map(function (x) { 
 						return parseInt(x); 
 					});
 					// sum the array of Reps
 					var myData = new Array(repArray);

					var repSum = myData.reduce(function (a, b) {
					    return a + b[1];
					}, 0);
 					repArray = repArray.map(function (x) { 
 						return parseInt(x); 
 					});
 						$('demTotal').append('<h3>Democrats Total: $' + demSum + '</h3>');
						$('repTotal').append('<h3 style="color: black;">Republican Total: $'+ repSum + '</h3>');
						console.log(repSum)
										

          console.log(repSum);
          console.log(demSum);
          					// chart.js function to make bar graph of senators and their total contributions  
          		    	var data = {
          		    			// names comes from api call and array built line 162
												labels : names,
												datasets : [
													{
														fillColor : "rgba(112, 137, 198, 0.8)",
														strokeColor : "rgba(220,220,220,1)",
														// totalContributionsArray comes from api call and array built line 171
														data : totalContributionsArray
													},
												]
											}
											//Get context with jQuery - using jQuery's .get() method.
											var ctx = $("#myChart").get(0).getContext("2d");
											//This will get the first returned node in the jQuery collection.
											var myNewChart = new Chart(ctx).Bar(data);

										// chart.js function to make pie chart of REP vs DEM total donations 


										var data = [
											{
												value: repSum,
												color:"rgba(255, 0, 0, 0.8)"
											},
											{
												value : demSum,
												color : "rgba(0,0,255, 0.8)"
											},	
										]
											var ctx2 = $('#myPieChart').get(0).getContext("2d");
											var myNewChart2 = new Chart(ctx2).Pie(data);

										// jquery append to the "scoreboard on pie chart view"


					// var data = {
					// 	Labels : names,
					// 	datasets : [
					// 		{
					// 			fillColor : "rgba(220,220,220,0.5)",
					// 			strokeColor : "rgba(220,220,220,1)",
					// 			data : totalContributionsArray,
					// 		}
					// 	]
					// }

          			
     				// console.log(totalContributionsArray)
					// console.log(individualDonationsArray)
					// console.log(pacDonationsArray)


			

        	}
      	});
		$.ajax({
        	url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/candidates/leaders/individual-total.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
            //force to handle it as jsonp by adding 'callback='
        	dataType: "jsonp",
            success: function(data) {                   
    			for (var key in data.results) {
					$('#twentyTotalIndividual').append('<div id="' + data.results[key].party + '" class="senator">' + data.results[key].name  + '</br>' + 
           			
           			'Total Contributions: ' + '$' + data.results[key].total_from_individuals + '</br>' +
           			
           			'Data Coverage Dates: ' + data.results[key].date_coverage_from + " - " + data.results[key].date_coverage_to + '</div>')
					//animation script					
          			// push total contributions into an array to be used in D3
 					totalContributionsArray.push(data.results[key].total_contributions);
 					// make contributions numbers integers not strings in the array totalContributionsArray will be used in D3
 					totalContributionsArray = totalContributionsArray.map(function (x) { 
 						return parseInt(x); 
					});
					// push total individual donations into an array
					individualDonationsArray.push(data.results[key].total_from_individuals);
					// make individual integers and not strings in array
					individualDonationsArray = individualDonationsArray.map(function (x) {
						return parseInt(x);
					});
					// push total pac donations to a candidate from nytimes api to an array
					pacDonationsArray.push(data.results[key].total_from_pacs)
					// make the strings in pacDonationsArray into integers
					pacDonationsArray = pacDonationsArray.map(function (x) {
						return parseInt(x);
					});
					// make an array of the names for use in D3
					twentyTotalPacSenatorNameArray.push(data.results[key].name);
					// combining twentyTotalPacSenatorNameArray with totalContributionsArray for D3
					


          		}  

			}

        });
		$.ajax({
			// make API call to sunlight foundation for senator informtion
			url: "http://congress.api.sunlightfoundation.com/legislators?chamber=senate&in_office=true&fields=bioguide_id,chamber,contact_form,facebook_id,fec_ids,gender,govtrack_id,first_name,last_name,party,state_name,term_start,term_end,website&per_page=50&apikey=77637d5b5fc2443493837cd2db6e3423&callback=",
			dataType: 'jsonp',
			success: function(data) {
				// console.log(data);
				for (var key in data.results) {
					if (data.results != null) {
						$('.sunlightSenatorInfo').append (
						  '<tr>' +
							'<td id="bioguide_id" >' + data.results[key].bioguide_id + '</td>' +
							'<td id="first_name_last_name" >' + data.results[key].first_name + ' ' + data.results[key].last_name + '</td>' +
							'<td id="chamber" >' + data.results[key].chamber + '</td>'+
							'<td id="party" >' + data.results[key].party + '</td>' +
							'<td id="state_name" >' + data.results[key].state_name + '</td>' +
							'<td id="term_start" >' + data.results[key].term_start + '</td>' +
							'<td id="term_end" >' + data.results[key].term_end + '</td>' +
							'<td id="website" >' + data.results[key].website + '</td>' +
						  '</tr>'
						)	
					};
					
				};
			}
		})
		$.ajax({
			// make API call to nytimes to get most recently added commities
			url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/committees/new.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
			dataType: 'jsonp',
			success: function(data) {
				for (var key in data.results) {
					if (data.results != null) {
						// From the json display the name, treasure name, state and link to fec
						$('#twentyNewestPacsContainer').append (
							'<div class="pacs"><h3 id="' + data.results[key].id + '">' + data.results[key].name  + '</h3>' + 
           					'Treasure: ' + data.results[key].treasurer +	'</br>' +
           					'State: ' + data.results[key].state + '</br>' +
           					'<span><a href="'  + data.results[key].fec_uri + '">FEC Link</a></span>' +
           					'</div>'
						)
					}
				};
			}
		})
		$.ajax({
			// make API call to nytimes to get most recent SUPER PACS
			url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/committees/superpacs.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
			dataType: 'jsonp',
			success: function(data) {
				for (var key in data.results) {
					if (data.results != null) {
						// From the json display the name, treasure name, state and link to fec
						$('#twentyNewestSuperPacsContainer').append (
							'<div class="pacs"><h3 id="' + data.results[key].id + '">' + data.results[key].name  + '</h3>' + 
           					'<p>Treasure: ' + data.results[key].treasurer +	'</br>' +
           					'State: ' + data.results[key].state + '</br>' +
           					'<span><a href="'  + data.results[key].fec_uri + '">FEC Link</a></span>' +
           					'</p></div>'
						)
					}
				};

			}

		});

		setTimeout(function(){
			//marquee for new PACS and Super PACS
		  	$('#twentyNewestPacsContainer').marquee( {
		  		direction: 'up',
		  		duration: 50000,
		  		duplicated: true,
		  	});
		  	
		  	$('#twentyNewestSuperPacsContainer').marquee( {
		  		direction: 'up',
		  		duration: 50000,
		  		duplicated: true,
			});

			// console.log(totalContributionsArray)
			// console.log(individualDonationsArray)
			// console.log(pacDonationsArray)
			        // D3 javascript
        var data = totalContributionsArray
        var width = 420,
    		barHeight = 20;

		var x = d3.scale.linear()
		    .domain([0, d3.max(data)])
		    .range([0, width]);

		var chart = d3.select(".chart")
		    .attr("width", width)
		    .attr("height", barHeight * data.length);

		var bar = chart.selectAll("g")
		    .data(data)
		  .enter().append("g")
		    .attr("transform", function(d, i) { return "translate(0," + i * barHeight + ")"; });

		bar.append("rect")
		    .attr("width", x)
		    .attr("height", barHeight - 1);

		bar.append("text")
		    .attr("x", function(d) { return x(d) - 3; })
		    .attr("y", barHeight / 2)
		    .attr("dy", ".35em")
		    .text(function(d) { return d; });




		},9000);
	// });








});