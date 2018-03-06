# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Proposal.destroy_all
Project.destroy_all
Organization.destroy_all
TeamMember.destroy_all
Team.destroy_all
User.destroy_all


p "Creating organizations"

organization = Organization.new(
    email: "info@brac.net",
    location: "75 Mohakhali, Dhaka-1212, Bangladesh",
     website: "brac.net",
     description: "BRAC, an international development organization based in Bangladesh, is the largest non-governmental development organisation in the world, in terms of number of employees as of September 2016",
     name: "BRAC",
     password: "password123"
    )
  organization.remote_photo_url = "http://www.brac.net/images/brac-logo-big.png"
  organization.save

  organization = Organization.new(
    email: "info@wikimedia.org",
    location: "1 Montgomery Street, Suite 1600, San Francisco, CA 94104, USA",
     website: "https://wikimediafoundation.org/wiki/Home",
     description: "The Wikimedia Foundation, Inc. is an American non-profit and charitable organization headquartered in San Francisco, California. It is mostly known for participating in the Wikimedia movement.",
     name: "Wikimedia Foundation",
     password: "password123"
    )
  organization.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Wikimedia_Foundation_RGB_logo_with_text.svg/1024px-Wikimedia_Foundation_RGB_logo_with_text.svg.png"
  organization.save

  organization = Organization.new(
    email: "contact@acumen.org",
    location: "40 Worth Street, Suite 303, New York, NY, 10013, USA",
     website: "acumen.org",
     description: "Acumen is a non-profit global venture fund that uses entrepreneurial approaches to solve the problems of poverty.",
     name: "Acumen Fund",
     password: "password123"
    )
  organization.remote_photo_url = "http://acumen.org/wp-content/uploads/2017/10/logo-1.png"
  organization.save

  organization = Organization.new(
    email: Faker::Internet.email,
    location: "Borgergade 10, 3rd floor, 1300 Copenhagen K., Denmark",
     website: "drc.ngo",
     description: "Danish Refugee Council is a private Danish humanitarian organisation, founded in 1956. It serves as an umbrella organization for 33 member organizations.",
     name: "Danish Refugee Council",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.newvision.co.ug/w-images/0e9fb529-4c02-4d29-8191-42385501ffe9/1/DRC-703x422.jpg"
  organization.save

  organization = Organization.new(
    email: "communications1@pih.org",
    location: "800 Boylston Street, Suite 300, Boston, MA 02199, USA",
     website: "pih.org",
     description: "Partners In Health is a Boston-based nonprofit health care organization founded in 1987 by Paul Farmer, Ophelia Dahl, Thomas J. White, Todd McCormack, and Jim Yong Kim.",
     name: "Partners in Health",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.pih.org/sites/default/files/header-logo-orange.png"
  organization.save

  organization = Organization.new(
    email: "info@ceres.org",
    location: "99 Chauncy Street, 6th Floor, Boston, MA 02111, USA",
     website: "https://www.ceres.org/",
     description: "Ceres is a non-profit sustainability advocacy organization based in Boston, Massachusetts. Founded in 1989, Ceres' mission is to -mobilize investor and business leadership to build a thriving, sustainable global economy-.",
     name: "Ceres",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.ceres.org/themes/ceres/assets/images/ceres-logo-tagline.png"
  organization.save

  organization = Organization.new(
    email: "cisecretariat@careinternational.org",
    location: "Chemin de Balexert 7-9, 1219 Chatelaine (Geneva), Switzerland",
     website: "care-international.org",
     description: "CARE is a major international humanitarian agency delivering emergency relief and long-term international development projects. Founded in 1945, CARE is nonsectarian, impartial, and non-governmental.",
     name: "CARE",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.care-international.org/assets/images/CARE_logo.png"
  organization.save

  organization = Organization.new(
    email: "info@msf.org",
    location: "78 rue de Lausanne, Case Postale 1016, 1211 Geneva 1, Switzerland",
     website: "msf.org",
     description: "Médecins Sans Frontières, also known in English as Doctors Without Borders, is an international humanitarian non-governmental organization best known for its projects in war-torn regions and developing countries affected by endemic diseases.",
     name: "Doctors Without Borders",
     password: "password123"
    )
  organization.remote_photo_url = "https://upload.wikimedia.org/wikipedia/en/thumb/b/bd/Msf_logo.svg/1200px-Msf_logo.svg.png"
  organization.save

  organization = Organization.new(
    email: "ransford@uic.edu",
    location: "1603 W. Taylor St., MC #923, Chicago, IL 60612, USA",
     website: "http://cureviolence.org/",
     description: "Cure Violence, founded by University of Illinois at Chicago School of Public Health Epidemiologist Gary Slutkin, M.D. and ranked one of the top twenty NGOs by the Global Journal in 2015, is a public health anti-violence program.",
     name: "Cure Violence",
     password: "password123"
    )
  organization.remote_photo_url = "https://illinois.edu/skinDesigner/css/8365/Cure_Violence_Header.jpg"
  organization.save

  organization = Organization.new(
    email: "info@mercycorpsnw.org",
    location: "45 SW Ankeny St., Portland, OR 97204, USA",
     website: "mercycorpsnw.org",
     description: "Mercy Corps is a global humanitarian aid agency engaged in transitional environments that have experienced some sort of shock: natural disaster, economic collapse, or conflict.",
     name: "Mercy Corps",
     password: "password123"
    )
  organization.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/9/96/MC_New_Logo_Horizontal_PMS_186_PC_10-15.jpg"
  organization.save

  organization = Organization.new(
    email: "contactus@amnesty.org",
    location: "1 Easton Street, London, WC1X 0DW, UK",
     website: "https://www.amnesty.org/en/",
     description: "Amnesty International is a London-based non-governmental organization focused on human rights. The organization claims to have over 7 million members and supporters around the world.",
     name: "Amnesty International",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.logodesignlove.com/images/classic/amnesty-logo-01.jpg"
  organization.save

  organization = Organization.new(
    email: "info@orbis.org.uk",
    location: "124- 128 City Road, EC1V 2NJ, LONDON",
     website: "https://gbr.orbis.org/en",
     description: "Orbis International is an international non-profit non-governmental organization dedicated to saving sight worldwide.",
     name: "Orbis International",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.orbis.org/assets/images/orbis-logo_384x228.png"
  organization.save

  organization = Organization.new(
    email: "info@rescross.org",
    location: "431 18th Street, NW, Washington, DC 20006, USA",
     website: "http://www.redcross.org/",
     description: "The International Red Cross and Red Crescent Movement is an international humanitarian movement with approximately 97 million volunteers, members and staff worldwide which was founded to protect human ...",
     name: "Red Cross",
     password: "password123"
    )
  organization.remote_photo_url = "https://i.forbesimg.com/media/lists/companies/american-national-red-cross_416x416.jpg"
  organization.save

  organization = Organization.new(
    email: "communications@unaids.org",
    location: "20, Avenue Appia, CH-1211 Geneva 27, Switzerland",
     website: "http://www.unaids.org/en",
     description: "The Joint United Nations Programme on HIV and AIDS is the main advocate for accelerated, comprehensive and coordinated global action on the HIV/AIDS pandemic.",
     name: "UNAIDS",
     password: "password123"
    )
  organization.remote_photo_url = "http://logonoid.com/images/unaids-logo.png"
  organization.save

  organization = Organization.new(
    email: "info@jci.cc",
    location: "15645 Olive Blvd. Chesterfield, MO 63017, USA",
     website: "https://www.jci.cc/",
     description: "Junior Chamber International is a non-profit international non-governmental organization of young people between 18 and 40 years old. It has members in about 124 countries, and regional or national organizations in many of them.",
     name: "JCI",
     password: "password123"
    )
  organization.remote_photo_url = "http://www.jcihk.org/images/download/dlwid_83_dlwlistid_78.jpg"
  organization.save

  organization = Organization.new(
    email: "info@avaaz.org",
    location: "27 Union Square West, Suite 500. New York NY 10013, USA",
     website: "https://secure.avaaz.org/page/en/",
     description: "Avaaz is a U.S.-based civic organization launched in January 2007 that promotes global activism on issues such as climate change, human rights, animal rights, corruption, poverty, and conflict.",
     name: "Avaaz",
     password: "password123"
    )
  organization.remote_photo_url = "https://secure.avaaz.org/campaign/static/images/blue/logo_en.png?1518258155"
  organization.save

  organization = Organization.new(
    email: "central@iso.org",
    location: "Chemin de Blandonnet 8, CP 401, 1214 Vernier, Geneva, Switzerland",
     website: "iso.org",
     description: "The International Organization for Standardization is an international standard-setting body composed of representatives from various national standards organizations.",
     name: "ISO",
     password: "password123"
    )
  organization.remote_photo_url = "https://seeklogo.com/images/I/iso-9001-logo-236FB79836-seeklogo.com.png"
  organization.save

  organization = Organization.new(
    email: "donck@isoc.org",
    location: "1775 Wiehle Avenue, Suite 201, Reston, VA, 20190-5108, USA",
     website: "internetsociety.org",
     description: "The Internet Society is an American non-profit organization founded in 1992 to provide leadership in Internet-related standards, education, access, and policy.",
     name: "Internet Society",
     password: "password123"
    )
  organization.remote_photo_url = "http://www.internetsociety.org/wp-content/uploads/2017/05/ISOC-Dark-RGB_Logo_2016-08-01_EN_FINAL_v01_0.png"
  organization.save

  organization = Organization.new(
    email: "contact@chathamhouse.org",
    location: "10 St James's Square, London SW1Y 4LE, UK",
     website: "chathamhouse.org",
     description: "The Royal Institute of International Affairs, commonly known as Chatham House, is a non-profit, non-governmental organisation based in London whose mission is to analyse and promote the understanding ...",
     name: "Chatham House",
     password: "password123"
    )
  organization.remote_photo_url = "http://www.chathamhouse.org/sites/default/themes/custom/childship/images/logo-fb-share.png?d=1"
  organization.save

p "Creating projects"



  organization1 = Organization.find_by(name: "Internet Society")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Google Maps integration",
    description: "I would like to have a map displaying our headquarter and where we are stationed around the world.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: true,
    forms: false,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://enterprise54.com/wp-content/uploads/2014/07/internet-governance-660x400.jpg"
  project.save

  organization1 = Organization.find_by(name: "Avaaz")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Complete Website",
    description: "I would like to have a whole new website. It shoulod contain forms to contact us and a volunteer login as well as a messaging area for those.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: true,
    messaging_integration: true,
    other: some.sample,
    )
  project.remote_photo_url = "https://secure.avaaz.org/campaign/static/images/blue/_sample/whatwedo.jpg?1515761494"
  project.save


  organization1 = Organization.find_by(name: "Red Cross")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Sign Up",
    description: "My website is great but I really would like a Sign up and login area. However, if you have anymore tips to make the website better please come forward.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://www.ifrc.org/Global/Photos/Asia%20Pacific/201701/20170112_WS_Thai_flooding_mainpic.jpg"
  project.save


  organization1 = Organization.find_by(name: "BRAC")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Payment integration",
    description: "I would like a contact us page and a donate button on each page.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: true,
    payment_integration: true,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.ngoadvisor.net/wp-content/uploads/2016/01/AWright_SierraLeone_003129.jpg"
  project.save


  organization1 = Organization.find_by(name: "Doctors Without Borders")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Refactoring Website",
    description: "I would like to refactor our website its old and has no taste. I hope you can help!",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: true,
    maps: true,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: true,
    messaging_integration: true,
    other: some.sample,
    )
  project.remote_photo_url = "http://media.msf.org/Doc/MSF/Media/TR1/5/4/b/3/MSF120855.jpg"
  project.save


  organization1 = Organization.find_by(name: "Danish Refugee Council")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Make our Website responsive",
    description: "I just realized again that our website is not viewable on any other device then the computer and even there is no taste in it.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: true,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://drc.ngo/media/1273463/billeder-til-elfenbenskysten.jpg"
  project.save


  organization1 = Organization.find_by(name: "Amnesty International")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "About us",
    description: "I want a short and crispy about us page and will give you the text to be displayed.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: true,
    forms: false,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.amnesty.de/sites/default/files/styles/1218x600/public/2017-05/Australien-Amnesty-Action.jpg?itok=m0lzeOCo"
  project.save


  organization1 = Organization.find_by(name: "UNAIDS")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Complete Website",
    description: "I would like to have a map displaying our headquarter(address) on the homepage and a complete follow up.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: true,
    maps: true,
    forms: true,
    mail_integration: true,
    payment_integration: true,
    sign_up_log_in: false,
    landing_page: true,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://mm.one.un.org/content/dam/unct/myanmar/img/unct_mm_UNAIDS_seminar_lead%20image.jpg/jcr:content/renditions/cq5dam.web.540.390.jpeg"
  project.save


  organization1 = Organization.find_by(name: "Orbis International")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Donation",
    description: "I would like a donate button and payment on each page",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: false,
    mail_integration: false,
    payment_integration: true,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://alliancemedicalgas.net/wp-content/uploads/2014/01/7743_10151889870945172_1027993467_n-1.jpg"
  project.save


  organization1 = Organization.find_by(name: "Acumen Fund")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Maps needs styling",
    description: "I would like to have a new map displaying our headquarter and where we are stationed around the world.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: true,
    forms: false,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.johnsonbanks.co.uk/content/projects/_quarter/Acumen-biz-card7.jpg"
  project.save

  organization1 = Organization.find_by(name: "Cure Violence")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Complete Website",
    description: "A new website, that contains forms to contact us and a volunteer login as well as a messaging area for those.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: true,
    messaging_integration: true,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.ngoadvisor.net/wp-content/uploads/2016/01/Dont-Shoot-with-CV-Logo.jpg"
  project.save


  organization1 = Organization.find_by(name: "Chatham House")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Login",
    description: "I would like a Sign up and login area. However, if you have anymore tips to make the website better please come forward.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.stopkillerrobots.org/wp-content/uploads/2014/03/ChathamHouse_CR.jpg"
  project.save


  organization1 = Organization.find_by(name: "JCI")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Payment option between Paypal etc",
    description: "I would like a contact us page and a donate button on each page. It should include different payment options.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: true,
    payment_integration: true,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://jciranchi.com/wp-content/themes/jcix/images/mission.jpg"
  project.save


  organization1 = Organization.find_by(name: "Wikimedia Foundation")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Whole new design",
    description: "Our website needs a new design in the logo colours!",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: true,
    maps: true,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: true,
    messaging_integration: true,
    other: some.sample,
    )
  project.remote_photo_url = "https://media.glassdoor.com/l/38331/wikimedia-foundation-office.jpg"
  project.save


  organization1 = Organization.find_by(name: "Partners in Health")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Make our Website suitable for all devices",
    description: "The website should eb useable by all devices such as iPad, iPhone, etc",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: true,
    landing_page: true,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "http://i.vimeocdn.com/video/609508806_1280x720.jpg"
  project.save


  organization1 = Organization.find_by(name: "Ceres")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Contact us",
    description: "I want a short and crispy contact us page and will give you the text to be displayed.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: true,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.trendrr.net/wp-content/uploads/2017/04/Ceres-Top-Famous-NGOs-in-The-World-2018.jpg"
  project.save


  organization1 = Organization.find_by(name: "CARE")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Messaging field",
    description: "I want a messaging field wjich can be used for immediate responses by our volunteers.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.tmc.ac.uk/sites/default/files/3_42.jpg"
  project.save

  organization1 = Organization.find_by(name: "ISO")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Search Bar",
    description: "I would like a search bar so that our visitors can find what they are looking for without scrolling for ages.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: false,
    maps: false,
    forms: true,
    mail_integration: false,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.iso.org/files/live/sites/isoorg/files/about%20ISO/img/ISO_banner_Vernier.jpg/thumbnails/1200x300"
  project.save

  organization1 = Organization.find_by(name: "Mercy Corps")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Page with all Projects",
    description: "My team and I would like a page showing all our current projects and where they are located.",
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: organization1,
    db_sql: true,
    maps: true,
    forms: false,
    mail_integration: true,
    payment_integration: false,
    sign_up_log_in: false,
    landing_page: false,
    messaging_integration: false,
    other: some.sample,
    )
  project.remote_photo_url = "https://www.palantir.com/philanthropy-engineering/annual-report/2016/resources/images/masthead-mercycorps-2.jpg"
  project.save
p "Creating teams"

20.times do
  Team.create(about_us: ["We are fast working and accurate people.", "We want to help for nearly no money.", "Hey we are an open team that communicates and keeps everyone up to date."].sample)
end

p "Creating user"

20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "password123",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    github: "https://github.com/juliettech13",
    photo: "https://source.unsplash.com/person",
    about_me: "#{Faker::SiliconValley.motto} + #{Faker::SiliconValley.quote}"
    )
  user.remote_photo_url = "https://source.unsplash.com/random"
  user.save
end

p "Creating team member"


20.times do
  TeamMember.create(
    lead_dev: [true, false].sample,
    team: Team.all.sample,
    user: User.all.sample
    )
end

p "Creating applications"


20.times do
  Proposal.create(
    pitch: ["Me and my team would love to help you out. However, it would be great to get some financial help!", "We are work expirienced alumni from Le Wagon who are inquisitive and want to keep learning"].sample,
    status: ["Pending Developer request", "Pending NGO validation", "Confirmed", "Canceled"].sample,
    team: Team.all.sample,
    project: Project.all.sample
    )
end
