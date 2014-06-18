require 'json'

namespace :sunlight do
	desc "Seed database with sunlight data"
	task seed_database: :environment do
		response = HTTParty.get('http://congress.api.sunlightfoundation.com/legislators?chamber=senate&in_office=true&fields=bioguide_id,chamber,contact_form,facebook_id,fec_ids,gender,govtrack_id,first_name,last_name,party,state_name,term_start,term_end,website&per_page=50&apikey=77637d5b5fc2443493837cd2db6e3423')
		senators_info = JSON.parse(response.body)
		senators_info = senators_info["results"]
		# puts senators_info.count
		senators_info.each do |e|
			bioguide_id = e["bioguide_id"]
			chamber = e["chamber"] 
			contact_form = e["contact_form"]
			# puts contact_form.class
			facebook_id = e["facebook_id"]
			fec_ids = e["fec_ids"]
			if fec_ids != nil
				fec_ids = fec_ids.join
			end
			# puts fec_ids.class
			first_name = e["first_name"]
			gender = e["gender"]
			govtrack_id = e["govtrack_id"]
			last_name = e["last_name"]
			party = e["party"]
			state_name = e["state_name"]
			term_end = e["term_end"]
			term_start = e["term_start"]
			website = e["website"]
			
			Senator.create(bioguide_id: bioguide_id, chamber: chamber, contact_form: contact_form, facebook_id: facebook_id, fec_ids: fec_ids, first_name: first_name, gender: gender, govtrack_id: govtrack_id, last_name: last_name, party: party, state_name: state_name, term_end: term_end, term_start: term_start, website: website)
		end
	end

	namespace :sunlight do
	desc "Seed database with sunlight data"
	task seed_database: :environment do
		response = HTTParty.get('http://congress.api.sunlightfoundation.com/legislators?chamber=senate&in_office=true&fields=bioguide_id,chamber,contact_form,facebook_id,fec_ids,gender,govtrack_id,first_name,last_name,party,state_name,term_start,term_end,website&per_page=50&page=2&apikey=77637d5b5fc2443493837cd2db6e3423')
		senators_info = JSON.parse(response.body)
		senators_info = senators_info["results"]
		# puts senators_info.count
		senators_info.each do |e|
			bioguide_id = e["bioguide_id"]
			chamber = e["chamber"] 
			contact_form = e["contact_form"]
			# puts contact_form.class
			facebook_id = e["facebook_id"]
			fec_ids = e["fec_ids"]
			if fec_ids != nil
				fec_ids = fec_ids.join
			end
			# puts fec_ids.class
			first_name = e["first_name"]
			gender = e["gender"]
			govtrack_id = e["govtrack_id"]
			last_name = e["last_name"]
			party = e["party"]
			state_name = e["state_name"]
			term_end = e["term_end"]
			term_start = e["term_start"]
			website = e["website"]
			
			Senator.create(bioguide_id: bioguide_id, chamber: chamber, contact_form: contact_form, facebook_id: facebook_id, fec_ids: fec_ids, first_name: first_name, gender: gender, govtrack_id: govtrack_id, last_name: last_name, party: party, state_name: state_name, term_end: term_end, term_start: term_start, website: website)
		end
	end
end
end
