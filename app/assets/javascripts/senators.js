        //When DOM loaded we attach click event to button
$(document).ready(function() {
  // This is the var equals total amount donated to candidates   
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
            // var list = [];
    			var contributions = [];
    			var contributionsDems = 0;
    			var contributionsReps = 0;
    			for (var key in data.results) {
					$('#twentyTotalPac').append('<div id="' + data.results[key].party + '"> Name: ' + data.results[key].name  + '</br>' + 
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
          					// console.log(contributionsReps);
          					// console.log(contributionsDems);
          		}
          							// to set the background-color blue or red depending on 'REP' or 'DEM'
        			

          				contributionsReps += data.results[key].total_contributions;

          				contributionsDems += data.results[key].total_contributions;
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
						$('#sunlightSenatorInfo').append('<div id="'+ data.results[key].bioguide_id +'" class="senators">Name: ' + data.results[key].first_name + ' ' + data.results[key].last_name + '</br>' +
							'Chamber: ' + data.results[key].chamber + '</br>' +
							'Party: ' + data.results[key].party + '</br>' +
							'State: ' + data.results[key].state_name + '</br>' +
							'Term Start: ' + data.results[key].term_start + '</br>' +
							'Term End: ' + data.results[key].term_end + '</br>' +
							'Website: ' + data.results[key].website
							+ '</div>'
						)	
					};
					
				};
			}
		})
		setTimeout(function(){
			console.log(totalContributionsArray)
			console.log(individualDonationsArray)
			console.log(pacDonationsArray)
		},1000);
	});
});