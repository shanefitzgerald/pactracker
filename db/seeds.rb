# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Senator.create(
bioguide_id: "W000818",
chamber: "senate",
contact_form: "http://www.walsh.senate.gov/contact.cfm",
facebook_id: "582461281840409",
fec_ids: null,
first_name: "John",
gender: "M",
govtrack_id: "412602",
last_name: "Walsh",
party: "D",
state_name: "Montana",
term_end: "2015-01-03",
term_start: "2014-02-11",
website: "http://www.walsh.senate.gov"
),
Senator.create(
bioguide_id: "B001288",
chamber: "senate",
contact_form: "http://www.booker.senate.gov/?p=contact",
fec_ids: [
"S4NJ00185"
],
first_name: "Cory",
gender: "M",
govtrack_id: "412598",
last_name: "Booker",
party: "D",
state_name: "New Jersey",
term_end: "2015-01-03",
term_start: "2013-10-31",
website: "http://www.booker.senate.gov"
),
{
bioguide_id: "K000384",
chamber: "senate",
contact_form: "http://www.kaine.senate.gov/contact",
facebook_id: "482778861771212",
fec_ids: [
"S2VA00142"
],
first_name: "Timothy",
gender: "M",
govtrack_id: "412582",
last_name: "Kaine",
party: "D",
state_name: "Virginia",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.kaine.senate.gov"
},
{
bioguide_id: "C001098",
chamber: "senate",
contact_form: "http://www.cruz.senate.gov/?p=email_senator",
facebook_id: "315496455229328",
fec_ids: [
"S2TX00312"
],
first_name: "Ted",
gender: "M",
govtrack_id: "412573",
last_name: "Cruz",
party: "R",
state_name: "Texas",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.cruz.senate.gov"
},
{
bioguide_id: "F000463",
chamber: "senate",
contact_form: "http://www.fischer.senate.gov/public/?p=email-deb",
facebook_id: "531623656856934",
fec_ids: [
"S2NE00094"
],
first_name: "Deb",
gender: "F",
govtrack_id: "412556",
last_name: "Fischer",
party: "R",
state_name: "Nebraska",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.fischer.senate.gov"
},
{
bioguide_id: "H001069",
chamber: "senate",
contact_form: "http://www.heitkamp.senate.gov/public/index.cfm/email-heidi",
facebook_id: "501810613175643",
fec_ids: [
"S2ND00099"
],
first_name: "Heidi",
gender: "F",
govtrack_id: "412554",
last_name: "Heitkamp",
party: "D",
state_name: "North Dakota",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.heitkamp.senate.gov"
},
{
bioguide_id: "K000383",
chamber: "senate",
contact_form: "http://www.king.senate.gov/contact",
facebook_id: "142803045874943",
fec_ids: [
"S2ME00109"
],
first_name: "Angus",
gender: "M",
govtrack_id: "412545",
last_name: "King",
party: "I",
state_name: "Maine",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.king.senate.gov"
},
{
bioguide_id: "W000817",
chamber: "senate",
contact_form: "http://www.warren.senate.gov/?p=email_senator#thisForm",
facebook_id: "131559043673264",
fec_ids: [
"S2MA00170"
],
first_name: "Elizabeth",
gender: "F",
govtrack_id: "412542",
last_name: "Warren",
party: "D",
state_name: "Massachusetts",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.warren.senate.gov"
},
{
bioguide_id: "S001194",
chamber: "senate",
contact_form: "http://www.schatz.senate.gov/contact",
facebook_id: "357806137657533",
fec_ids: [
"S4HI00136",
"H6HI02244"
],
first_name: "Brian",
gender: "M",
govtrack_id: "412507",
last_name: "Schatz",
party: "D",
state_name: "Hawaii",
term_end: "2015-01-03",
term_start: "2012-12-27",
website: "http://www.schatz.senate.gov"
},
{
bioguide_id: "H001041",
chamber: "senate",
contact_form: "http://www.heller.senate.gov/public/index.cfm/contact-form",
facebook_id: "325751330177",
fec_ids: [
"H6NV02164",
"S2NV00183"
],
first_name: "Dean",
gender: "M",
govtrack_id: "412218",
last_name: "Heller",
party: "R",
state_name: "Nevada",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.heller.senate.gov"
},
{
bioguide_id: "W000779",
chamber: "senate",
contact_form: "http://www.wyden.senate.gov/contact",
facebook_id: null,
fec_ids: [
"S6OR00110",
"H0OR03026"
],
first_name: "Ron",
gender: "M",
govtrack_id: "300100",
last_name: "Wyden",
party: "D",
state_name: "Oregon",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.wyden.senate.gov"
},
{
bioguide_id: "V000127",
chamber: "senate",
contact_form: "http://www.vitter.senate.gov/contact/email-senator-vitter",
facebook_id: null,
fec_ids: [
"S4LA00057",
"H0LA01079"
],
first_name: "David",
gender: "M",
govtrack_id: "400418",
last_name: "Vitter",
party: "R",
state_name: "Louisiana",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.vitter.senate.gov"
},
{
bioguide_id: "T000461",
chamber: "senate",
contact_form: "http://www.toomey.senate.gov/?p=contact",
facebook_id: "189274047751251",
fec_ids: [
"S4PA00121",
"H8PA15096"
],
first_name: "Patrick",
gender: "M",
govtrack_id: "400408",
last_name: "Toomey",
party: "R",
state_name: "Pennsylvania",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.toomey.senate.gov"
},
{
bioguide_id: "T000250",
chamber: "senate",
contact_form: "http://www.thune.senate.gov/public/index.cfm/contact",
facebook_id: null,
fec_ids: [
"S2SD00068",
"H6SD00085"
],
first_name: "John",
gender: "M",
govtrack_id: "400546",
last_name: "Thune",
party: "R",
state_name: "South Dakota",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.thune.senate.gov"
},
{
bioguide_id: "S000320",
chamber: "senate",
contact_form: "http://www.shelby.senate.gov/public/index.cfm/emailsenatorshelby",
facebook_id: "50850514797",
fec_ids: [
"S6AL00013"
],
first_name: "Richard",
gender: "M",
govtrack_id: "300089",
last_name: "Shelby",
party: "R",
state_name: "Alabama",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.shelby.senate.gov"
},
{
bioguide_id: "S001184",
chamber: "senate",
contact_form: "http://www.scott.senate.gov/contact/email-me",
facebook_id: "163207553711385",
fec_ids: [
"H0SC01279",
"S4SC00240"
],
first_name: "Tim",
gender: "M",
govtrack_id: "412471",
last_name: "Scott",
party: "R",
state_name: "South Carolina",
term_end: "2015-01-03",
term_start: "2013-01-03",
website: "http://www.scott.senate.gov"
},
{
bioguide_id: "S000148",
chamber: "senate",
contact_form: "http://www.schumer.senate.gov/Contact/contact_chuck.cfm",
facebook_id: "15771239406",
fec_ids: [
"S8NY00082",
"H0NY16010"
],
first_name: "Charles",
gender: "M",
govtrack_id: "300087",
last_name: "Schumer",
party: "D",
state_name: "New York",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.schumer.senate.gov"
},
{
bioguide_id: "R000595",
chamber: "senate",
contact_form: "http://www.rubio.senate.gov/public/index.cfm/contact",
facebook_id: "178910518800987",
fec_ids: [
"S0FL00338"
],
first_name: "Marco",
gender: "M",
govtrack_id: "412491",
last_name: "Rubio",
party: "R",
state_name: "Florida",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.rubio.senate.gov"
},
{
bioguide_id: "R000146",
chamber: "senate",
contact_form: "http://www.reid.senate.gov/contact",
facebook_id: "360249323990357",
fec_ids: [
"S6NV00028"
],
first_name: "Harry",
gender: "M",
govtrack_id: "300082",
last_name: "Reid",
party: "D",
state_name: "Nevada",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.reid.senate.gov"
},
{
bioguide_id: "P000449",
chamber: "senate",
contact_form: "https://www.portman.senate.gov/public/index.cfm/contact-form",
facebook_id: "45243961073",
fec_ids: [
"S0OH00133",
"H4OH02032"
],
first_name: "Robert",
gender: "M",
govtrack_id: "400325",
last_name: "Portman",
party: "R",
state_name: "Ohio",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.portman.senate.gov"
},
{
bioguide_id: "P000603",
chamber: "senate",
contact_form: "http://www.paul.senate.gov/?p=contact",
facebook_id: "161355253917286",
fec_ids: [
"S0KY00156"
],
first_name: "Rand",
gender: "M",
govtrack_id: "412492",
last_name: "Paul",
party: "R",
state_name: "Kentucky",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.paul.senate.gov"
},
{
bioguide_id: "M001111",
chamber: "senate",
contact_form: "http://www.murray.senate.gov/public/index.cfm/contactme",
facebook_id: null,
fec_ids: [
"S2WA00189"
],
first_name: "Patty",
gender: "F",
govtrack_id: "300076",
last_name: "Murray",
party: "D",
state_name: "Washington",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.murray.senate.gov"
},
{
bioguide_id: "M001169",
chamber: "senate",
contact_form: "http://www.murphy.senate.gov/contact",
facebook_id: "19437978960",
fec_ids: [
"H6CT05124",
"S2CT00132"
],
first_name: "Christopher",
gender: "M",
govtrack_id: "412194",
last_name: "Murphy",
party: "D",
state_name: "Connecticut",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.murphy.senate.gov"
},
{
bioguide_id: "M001153",
chamber: "senate",
contact_form: "http://www.murkowski.senate.gov/public/index.cfm?p=EMailLisa",
facebook_id: "25271170290",
fec_ids: [
"S4AK00099"
],
first_name: "Lisa",
gender: "F",
govtrack_id: "300075",
last_name: "Murkowski",
party: "R",
state_name: "Alaska",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.murkowski.senate.gov"
},
{
bioguide_id: "M000934",
chamber: "senate",
contact_form: "http://www.moran.senate.gov/public/index.cfm/e-mail-jerry",
facebook_id: "171578807105",
fec_ids: [
"H6KS01096",
"S0KS00091"
],
first_name: "Jerry",
gender: "M",
govtrack_id: "400284",
last_name: "Moran",
party: "R",
state_name: "Kansas",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.moran.senate.gov"
},
{
bioguide_id: "M000702",
chamber: "senate",
contact_form: "http://www.mikulski.senate.gov/contact/shareyouropinion.cfm",
facebook_id: "142890125771427",
fec_ids: [
"S6MD00140"
],
first_name: "Barbara",
gender: "F",
govtrack_id: "300073",
last_name: "Mikulski",
party: "D",
state_name: "Maryland",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.mikulski.senate.gov"
},
{
bioguide_id: "M000303",
chamber: "senate",
contact_form: "http://www.mccain.senate.gov/public/index.cfm/contact-form",
facebook_id: "6425923706",
fec_ids: [
"S6AZ00019",
"P80002801"
],
first_name: "John",
gender: "M",
govtrack_id: "300071",
last_name: "McCain",
party: "R",
state_name: "Arizona",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.mccain.senate.gov"
},
{
bioguide_id: "M000133",
chamber: "senate",
contact_form: "http://www.markey.senate.gov/contact",
facebook_id: "6846731378",
fec_ids: [
"H6MA07101",
"S4MA00028"
],
first_name: "Edward",
gender: "M",
govtrack_id: "400253",
last_name: "Markey",
party: "D",
state_name: "Massachusetts",
term_end: "2015-01-03",
term_start: "2013-07-16",
website: "http://www.markey.senate.gov"
},
{
bioguide_id: "L000577",
chamber: "senate",
contact_form: "http://www.lee.senate.gov/public/index.cfm/contact",
facebook_id: "178081365556898",
fec_ids: [
"S0UT00165"
],
first_name: "Mike",
gender: "M",
govtrack_id: "412495",
last_name: "Lee",
party: "R",
state_name: "Utah",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.lee.senate.gov"
},
{
bioguide_id: "L000174",
chamber: "senate",
contact_form: "https://www.leahy.senate.gov/contact/",
facebook_id: "178569152181267",
fec_ids: [
"S4VT00017"
],
first_name: "Patrick",
gender: "M",
govtrack_id: "300065",
last_name: "Leahy",
party: "D",
state_name: "Vermont",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.leahy.senate.gov"
},
{
bioguide_id: "K000360",
chamber: "senate",
contact_form: "http://www.kirk.senate.gov/?p=comment_on_legislation",
facebook_id: "116381528428230",
fec_ids: [
"H0IL10120",
"S0IL00261"
],
first_name: "Mark",
gender: "M",
govtrack_id: "400222",
last_name: "Kirk",
party: "R",
state_name: "Illinois",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.kirk.senate.gov"
},
{
bioguide_id: "J000293",
chamber: "senate",
contact_form: "http://www.ronjohnson.senate.gov/public/index.cfm/contact",
facebook_id: "186181661410703",
fec_ids: [
"S0WI00197"
],
first_name: "Ron",
gender: "M",
govtrack_id: "412496",
last_name: "Johnson",
party: "R",
state_name: "Wisconsin",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.ronjohnson.senate.gov"
},
{
bioguide_id: "I000055",
chamber: "senate",
contact_form: "http://www.isakson.senate.gov/public/index.cfm/email-me",
facebook_id: null,
fec_ids: [
"S6GA00119",
"H8GA06146"
],
first_name: "John",
gender: "M",
govtrack_id: "400194",
last_name: "Isakson",
party: "R",
state_name: "Georgia",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.isakson.senate.gov"
},
{
bioguide_id: "H001061",
chamber: "senate",
contact_form: "http://www.hoeven.senate.gov/public/index.cfm/email-the-senator",
facebook_id: "194483057244478",
fec_ids: [
"S0ND00093"
],
first_name: "John",
gender: "M",
govtrack_id: "412494",
last_name: "Hoeven",
party: "R",
state_name: "North Dakota",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.hoeven.senate.gov"
},
{
bioguide_id: "H001042",
chamber: "senate",
contact_form: "http://www.hirono.senate.gov/contact/email",
facebook_id: null,
fec_ids: [
"H6HI02251",
"S2HI00106"
],
first_name: "Mazie",
gender: "F",
govtrack_id: "412200",
last_name: "Hirono",
party: "D",
state_name: "Hawaii",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.hirono.senate.gov"
},
{
bioguide_id: "H001046",
chamber: "senate",
contact_form: "http://www.heinrich.senate.gov/contact/write-martin",
facebook_id: "137523189213",
fec_ids: [
"H8NM01224",
"S2NM00088"
],
first_name: "Martin",
gender: "M",
govtrack_id: "412281",
last_name: "Heinrich",
party: "D",
state_name: "New Mexico",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.heinrich.senate.gov"
},
{
bioguide_id: "G000386",
chamber: "senate",
contact_form: "http://www.grassley.senate.gov/constituents/questions-and-comments",
facebook_id: "106480645796",
fec_ids: [
"S0IA00028"
],
first_name: "Charles",
gender: "M",
govtrack_id: "300048",
last_name: "Grassley",
party: "R",
state_name: "Iowa",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.grassley.senate.gov"
},
{
bioguide_id: "F000444",
chamber: "senate",
contact_form: "http://www.flake.senate.gov/contact.cfm",
facebook_id: "senatorjeffflake",
fec_ids: [
"H0AZ01184",
"S2AZ00141"
],
first_name: "Jeff",
gender: "M",
govtrack_id: "400134",
last_name: "Flake",
party: "R",
state_name: "Arizona",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.flake.senate.gov"
},
{
bioguide_id: "D000607",
chamber: "senate",
contact_form: "http://www.donnelly.senate.gov/contact/email-joe",
facebook_id: "168059529893610",
fec_ids: [
"H4IN02101",
"S2IN00091"
],
first_name: "Joe",
gender: "M",
govtrack_id: "412205",
last_name: "Donnelly",
party: "D",
state_name: "Indiana",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.donnelly.senate.gov"
},
{
bioguide_id: "C000880",
chamber: "senate",
contact_form: "http://www.crapo.senate.gov/contact/email.cfm",
facebook_id: "80335332266",
fec_ids: [
"S8ID00027",
"H2ID02034"
],
first_name: "Michael",
gender: "M",
govtrack_id: "300030",
last_name: "Crapo",
party: "R",
state_name: "Idaho",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.crapo.senate.gov"
},
{
bioguide_id: "C000560",
chamber: "senate",
contact_form: "http://www.coburn.senate.gov/public/?p=ContactForm#form_904650a1-34fd-4705-aec9-87815cbf9cb4",
facebook_id: null,
fec_ids: [
"S4OK00174",
"H4OK02048"
],
first_name: "Thomas",
gender: "M",
govtrack_id: "400576",
last_name: "Coburn",
party: "R",
state_name: "Oklahoma",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.coburn.senate.gov"
},
{
bioguide_id: "C000542",
chamber: "senate",
contact_form: "http://www.coats.senate.gov/contact/",
facebook_id: "180671148633644",
fec_ids: [
"S0IN00053"
],
first_name: "Daniel",
gender: "M",
govtrack_id: "402675",
last_name: "Coats",
party: "R",
state_name: "Indiana",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.coats.senate.gov"
},
{
bioguide_id: "B001135",
chamber: "senate",
contact_form: "http://www.burr.senate.gov/public/index.cfm?FuseAction=Contact.ContactForm",
facebook_id: "132653626787856",
fec_ids: [
"S4NC00089",
"H2NC05074"
],
first_name: "Richard",
gender: "M",
govtrack_id: "400054",
last_name: "Burr",
party: "R",
state_name: "North Carolina",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.burr.senate.gov"
},
{
bioguide_id: "B000711",
chamber: "senate",
contact_form: "http://www.boxer.senate.gov/en/contact/policycomments.cfm",
facebook_id: "116513005087055",
fec_ids: [
"S2CA00286",
"H2CA06028",
"P80003247"
],
first_name: "Barbara",
gender: "F",
govtrack_id: "300011",
last_name: "Boxer",
party: "D",
state_name: "California",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.boxer.senate.gov"
},
{
bioguide_id: "B001236",
chamber: "senate",
contact_form: "http://www.boozman.senate.gov/public/index.cfm/e-mail-me",
facebook_id: "7686715735",
fec_ids: [
"H2AR03176",
"S0AR00150"
],
first_name: "John",
gender: "M",
govtrack_id: "400040",
last_name: "Boozman",
party: "R",
state_name: "Arkansas",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.boozman.senate.gov"
},
{
bioguide_id: "B000575",
chamber: "senate",
contact_form: "http://www.blunt.senate.gov/public/index.cfm/contact-form?p=contact-roy",
facebook_id: "142473042477322",
fec_ids: [
"H6MO07128",
"S0MO00183"
],
first_name: "Roy",
gender: "M",
govtrack_id: "400034",
last_name: "Blunt",
party: "R",
state_name: "Missouri",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.blunt.senate.gov"
},
{
bioguide_id: "B001277",
chamber: "senate",
contact_form: "https://www.blumenthal.senate.gov/contact/",
facebook_id: "289987304364966",
fec_ids: [
"S0CT00177"
],
first_name: "Richard",
gender: "M",
govtrack_id: "412490",
last_name: "Blumenthal",
party: "D",
state_name: "Connecticut",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.blumenthal.senate.gov"
},
{
bioguide_id: "B001267",
chamber: "senate",
contact_form: "http://www.bennet.senate.gov/contact/email",
facebook_id: "97172997732",
fec_ids: [
"S0CO00211"
],
first_name: "Michael",
gender: "M",
govtrack_id: "412330",
last_name: "Bennet",
party: "D",
state_name: "Colorado",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.bennet.senate.gov"
},
{
bioguide_id: "B001230",
chamber: "senate",
contact_form: "http://www.baldwin.senate.gov/contact",
facebook_id: "7357041101",
fec_ids: [
"H8WI00018",
"S2WI00219"
],
first_name: "Tammy",
gender: "F",
govtrack_id: "400013",
last_name: "Baldwin",
party: "D",
state_name: "Wisconsin",
term_end: "2019-01-03",
term_start: "2013-01-03",
website: "http://www.baldwin.senate.gov"
},
{
bioguide_id: "A000368",
chamber: "senate",
contact_form: "http://www.ayotte.senate.gov/?p=contact",
facebook_id: "123436097729198",
fec_ids: [
"S0NH00235"
],
first_name: "Kelly",
gender: "F",
govtrack_id: "412493",
last_name: "Ayotte",
party: "R",
state_name: "New Hampshire",
term_end: "2017-01-03",
term_start: "2011-01-05",
website: "http://www.ayotte.senate.gov"
}