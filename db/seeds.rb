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
     website: "www.brac.net",
     description: "BRAC, an international development organization based in Bangladesh, is the largest non-governmental development organisation in the world, in terms of number of employees as of September 2016.
     BRAC’s community empowerment programme believes in the need to build and strengthen community institutions and ensure stronger accountability of the local government towards the poor, especially women, in terms of their socio-political empowerment. This involves their capacity building, motivating them to raise their voice and take collective action. It strengthens the local government for poverty reduction initiatives, creates awareness and access to information, and prevents violence, particularly against women.",
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
  organization.remote_photo_url = "https://acumen.org/wp-content/themes/acumen-theme/img/global/footer-logo.png"
  organization.save

  organization = Organization.new(
    email: Faker::Internet.email,
    location: "Borgergade 10, 3rd floor, 1300 Copenhagen K., Denmark",
     website: "drc.ngo",
     description: "Danish Refugee Council is a private Danish humanitarian organisation, founded in 1956. It serves as an umbrella organization for 33 member organizations. DRC fulfils its mandate by providing direct assistance to conflict-affected populations – refugees, internally displaced people (IDPs) and host communities in the conflict areas of the world; and by advocating on behalf of conflict-affected populations internationally, and in Denmark, on the basis of humanitarian principles and the Human Rights Declaration.",
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
     description: "Médecins Sans Frontières, also known in English as Doctors Without Borders, is an international humanitarian non-governmental organization best known for its projects in war-torn regions and developing countries affected by endemic diseases. Doctors Without Borders/Médecins Sans Frontières (MSF) medical teams often witness violence, atrocities, and neglect in the course of their work, much of which occurs in places that rarely receive international attention. While on the ground, the teams are in constant dialogue with local authorities, warring parties, and other aid agencies in an attempt to reinforce the organization's operational independence and to facilitate the delivery of the best possible medical care for patients and their communities.",
     name: "Doctors Without Borders",
     password: "password123"
    )
  organization.remote_photo_url = "https://www.msf-me.org/MSFLogo.jpg"
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
     description: "Mercy Corps is a global humanitarian aid agency engaged in transitional environments that have experienced some sort of shock: natural disaster, economic collapse, or conflict. We understand that communities are the best agents of their own change and local markets are the best engines of long-term recovery. In more than 40 countries, we partner to put bold solutions into action, helping people triumph over adversity and grow stronger from within. For the refugee who dreams of rebuilding her country, for the mother who wants a healthy future for her children — for millions of people filled with the power of possibility — Mercy Corps connects people to the resources they need to build better, stronger lives.",
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
    email: "info@kiron.ngo",
    location: "Palais Am Festungsgraben. Am Festungsgraben 1. 10117 Berlin, DE",
     website: "http://kiron.ngo/",
     description: "A world in which everyone has the equal chance to access and succeed in higher education. Kiron enables access to higher education and successful learning for refugees through digital solutions.",
     name: "Kiron",
     password: "password123"
    )
  organization.remote_photo_url = "https://wp.kiron.ngo/wp-content/uploads/2016/11/k-Logo-WEB-Blue-500.png"
  organization.save

  organization = Organization.new(
    email: "communications@unaids.org",
    location: "20, Avenue Appia, CH-1211 Geneva 27, Switzerland",
     website: "http://www.unaids.org/en",
     description: "The Joint United Nations Programme on HIV and AIDS is the main advocate for accelerated, comprehensive and coordinated global action on the HIV/AIDS pandemic. UNAIDS is a problem-solver. It places people living with HIV and people affected by the virus at the decision-making table and at the centre of designing, delivering and monitoring the AIDS response. It charts paths for countries and communities to get on the Fast-Track to ending AIDS and is a bold advocate for addressing the legal and policy barriers to the AIDS response. UNAIDS provides the strategic direction, advocacy, coordination and technical support needed to catalyse and connect leadership from governments, the private sector and communities to deliver life-saving HIV services. Without UNAIDS, there would be no strategic vision for the AIDS response.",
     name: "UNAIDS",
     password: "password123"
    )
  organization.remote_photo_url = "http://photos.myjoyonline.com/photos/news/201606/2800131492057_7212904850848.jpg"
  organization.save

  organization = Organization.new(
    email: "info@jci.cc",
    location: "15645 Olive Blvd. Chesterfield, MO 63017, USA",
     website: "https://www.jci.cc/",
     description: "Junior Chamber International is a non-profit international non-governmental organization of young people between 18 and 40 years old. It has members in about 124 countries, and regional or national organizations in many of them.",
     name: "Junior Chamber International",
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
     description: "The Internet Society is an American non-profit organization founded in 1992 to provide leadership in Internet-related standards, education, access, and policy.
     In the Internet’s short history, we have already witnessed attempts to shut down or limit discussions on key issues such as network neutrality, or to reframe the implications of policies, such as those that relate to cybersecurity. What we learn repeatedly is that the best and most lasting solutions are ones that we arrive at through cooperation and mutual respect, that are rooted in principle, and that open the door to innovation.",
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
  organization.remote_photo_url = "https://www.chathamhouse.org/sites/default/themes/custom/childship/images/logo-fb-share.png?d=1"
  organization.save

p "Creating projects"

  organization1 = Organization.find_by(name: "Internet Society")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Google Maps integration",
    description: "We would like to have a map displaying our landing page that will display specifically all the cities where we are established. This map should have personalized markers with our logo and should react automatically everytime we open a new office. We also want to be able to customize the map to be decorated with the colors of our brand as well as have it fit the entire screen.",
    budget: "500$",
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
  project.remote_photo_url = "https://static.pexels.com/photos/220201/pexels-photo-220201.jpeg"
  project.save



  # organization1 = Organization.find_by(name: "Kiron")
  # status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  # some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  # project = Project.new(
  #   title: "Sign Up",
  #   description: "My website is great I think but I really would like a Sign up and login area. However, if you have anymore tips to make the website better please come forward.",
  #   budget: "750$",
  #   due_date: Faker::Date.forward(100),
  #   status: status.sample,
  #   organization: organization1,
  #   db_sql: false,
  #   maps: false,
  #   forms: true,
  #   mail_integration: false,
  #   payment_integration: false,
  #   sign_up_log_in: true,
  #   landing_page: false,
  #   messaging_integration: false,
  #   other: some.sample,
  #   )
  # project.photo = "https://kiron.ngo/wp-content/uploads/2017/12/Copy-of-Copy-of-Blog-Template-Featured-Image-9.png"
  # project.save
  organization1 = Organization.find_by(name: "CARE")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Messaging form",
    description: "I want a messaging field wjich can be used for immediate responses by our volunteers.",
    budget: "800$",
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

  organization1 = Organization.find_by(name: "BRAC")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Payment integration",
    description: "I would like a contact us page and a donate button on each page.",
    budget: "570$",
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

  organization1 = Organization.find_by(name: "Mercy Corps")
  some = ["Everything should be in different shades of blue", "Picture uploading would be nice for user interface", "Banners are highly encouraged", "Trello integration for internal use"]
  project = Project.new(
    title: "Landing Page",
    description: "Mercy Corps needs a website that will attract people as soon as you land. We want a map that shows where we are stationed around the world with a customized icon for each location, as well as a contact form so that those interested in volunteering can reach us in a very easy manner. Ideally, this page would also have a space for showcasing our most recent work and where we have been mentioned in recent publications. The page should be consistent with the design of the rest of our website and should be responsive when used in mobile and tablets, as well as all-sized computers.",
    budget: "1,150€",
    due_date: "20/04/2018",
    status: "Accepted by the organization",
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

  organization1 = Organization.find_by(name: "Doctors Without Borders")
  some = ["Everything should be in different shades of blue", "Picture uploading would be nice for user interface", "Banners are highly encouraged", "Trello integration for internal use"]
  project = Project.new(
    title: "Home Page Responsiveness",
    description: "Doctors Without Borders needs a landing page for our newest branch that will attract people as soon as you land. We want a map that shows where we are stationed around the world with a customized icon for each location. Also, the website must have a contact form so that those interested in volunteering can reach us in a very easy manner. Ideally, this page would have a space for showcasing our most recent work and where we have been mentioned in recent publications. The page should be consistent with the design of the rest of our website and should be equally represented when used in mobile and tablets, as well as small, mid, and large computers.",
    budget: "1,150€",
    due_date: "20/04/2018",
    status: "Accepted by the organization",
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
    title: "Landing Page",
    description: "DRC's landing page must have a contact form so that those interested in volunteering can reach us easily. This page would have a space for showcasing our most recent work on a map, should be consistent with the design of the rest of our website and be responsive.",
    budget: "800$",
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
    budget: "550$",
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
    budget: "600$",
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
  project.remote_photo_url = "http://www.unaids.org/sites/default/files/20170921_FT_2.jpg"
  project.save


  organization1 = Organization.find_by(name: "Orbis International")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Donation",
    description: "I would like a donate button and payment on each page",
    budget: "800$",
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
    budget: "600$",
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
  project.remote_photo_url = "https://acumen.org/wp-content/uploads/2017/09/26456759842_6362a7d038_k.jpg"
  project.save

  organization1 = Organization.find_by(name: "Cure Violence")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Complete Website",
    description: "A new website, that contains forms to contact us and a volunteer login as well as a messaging area for those.",
    budget: "1500$",
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
  project.remote_photo_url = "https://scontent-frt3-2.xx.fbcdn.net/v/t1.0-9/19884369_1945539745460059_5237039269211580641_n.jpg?oh=674beeeaca5a9083f55c20c784035d05&oe=5B0D2A2C"
  project.save


  organization1 = Organization.find_by(name: "Chatham House")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Login",
    description: "I would like a Sign up and login area. However, if you have anymore tips to make the website better please come forward.",
    budget: "450$",
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
    budget: "500$",
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
  project.remote_photo_url = "https://scontent-frt3-2.xx.fbcdn.net/v/t31.0-8/27173386_10155221509008461_2987268575239163423_o.jpg?oh=25249c4ea6327560c735fae8480bf948&oe=5B09189F"
  project.save


  organization1 = Organization.find_by(name: "Wikimedia Foundation")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Whole new design",
    description: "Our website needs a new design in the logo colours!",
    budget: "1500$",
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
    title: "Make our Website Responsive",
    description: "The website should eb useable by all devices such as iPad, iPhone, etc",
    budget: "1300$",
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
  project.remote_photo_url = "https://www.pih.org/sites/default/files/styles/flexslider_full/public/2017-07/Haiti_0915_Cardiac_rrollins_051-web.jpg?itok=n3jmJ-LN"
  project.save


  organization1 = Organization.find_by(name: "Ceres")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Contact us",
    description: "I want a short and crispy contact us page and will give you the text to be displayed.",
    budget: "500$",
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



  organization1 = Organization.find_by(name: "ISO")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Search Bar",
    description: "I would like a search bar so that our visitors can find what they are looking for without scrolling for ages.",
    budget: "700$",
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


  organization1 = Organization.find_by(name: "Avaaz")
  status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
  some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
  project = Project.new(
    title: "Complete Website",
    description: "I would like to have a whole new website. It shoulod contain forms to contact us and a volunteer login as well as a messaging area for those.",
    budget: "1700$",
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

p "Creating teams"

20.times do
  Team.create(about_us: ["We are fast working and  people.", "We want to help for nearly no money.", "Hey we are an open team that communicates and keeps everyone up to date."].sample)
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
