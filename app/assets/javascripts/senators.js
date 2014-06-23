        //When DOM loaded we attach click event to button
$(document).ready(function() {
  // This is the var equals total amount donated to candidates
  var senatorKeyContributions = []   
  var twentyTotalPacSenatorNameArray = [];
  var totalContributionsArray = [];
  var individualDonationsArray = [];
  var pacDonationsArray = [];         
    //after button is clicked we download the data
    $('.button').click(function(){
        //start ajax request
    	$.ajax({
        	url: "http://api.nytimes.com/svc/elections/us/v3/finances/2014/candidates/leaders/pac-total.json?api-key=c353cbc0ae7d858a504f6ed663c0a326:5:69483126",
            //force to handle it as jsonp by adding 'callback='
        	dataType: "jsonp",
            success: function(data) {                   
    			for (var key in data.results) {
					$('#twentyTotalPac').append('<div id="' + data.results[key].party + '" class="section"> Name: ' + data.results[key].name  + '</br>' + 
           			'Party: ' + data.results[key].party +	'</br>' +
           			'Starting Cash: ' + '$' + data.results[key].begin_cash + '</br>' +
           			'Ending Cash: ' + '$' + data.results[key].end_cash + '</br>' +
           			'Total Contributions: ' + '$' + data.results[key].total_contributions + '</br>' +
           			'Total Disbursements: ' + '$' + data.results[key].end_cash + '</br>' +
           			'Individual Donations: ' + '$' + data.results[key].total_from_individuals + '</br>' +
           			'PAC Donations: ' + '$' + data.results[key].total_from_pacs + '</br>' +
           			'Data Coverage Dates: ' + data.results[key].date_coverage_from + " - " + data.results[key].date_coverage_to + '</div>')
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

          			console.log(senatorKeyContributions);
     //    			console.log(totalContributionsArray)
					// console.log(individualDonationsArray)
					// console.log(pacDonationsArray)
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
						$('#newPacs').append (
							'<div id="' + data.results[key].id + '" class="section"> Name: ' + data.results[key].name  + '</br>' + 
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
						$('#newSuperPacs').append (
							'<div id="' + data.results[key].id + '" class="section">' + data.results[key].name  + '</br>' + 
           					'Treasure: ' + data.results[key].treasurer +	'</br>' +
           					'State: ' + data.results[key].state + '</br>' +
           					'<span><a href="'  + data.results[key].fec_uri + '">FEC Link</a></span>' +
           					'</div>'
						)
					}
				};


				console.log(data);
			}

		});
		setTimeout(function(){
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
		},10000);
	});









});