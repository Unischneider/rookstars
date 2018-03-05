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

20.times do
  organization = Organization.new(
    email: Faker::Internet.email,
    location: "#{Faker::Address.street_address}, #{Faker::Address.zip_code},
     #{Faker::Address.state}, #{Faker::Address.country}",
     website: Faker::Internet.url,
     description: ["We have the knowledge, skills and technologies to stop climate change. All over the world people have woken up to the threat, and are working to reduce the use of fossil fuels, stop rainforest destruction and get power from clean energy. Still much more needs to be done.", ].sample,
     name: Faker::Company.name,
     password: "password123"
    )
  organization.remote_photo_url = "https://source.unsplash.com/weekly?company"
  organization.save

end

p "Creating projects"


project_titles = ["Google Maps integration", "Complete Website", "Sign Up", "Payement integration", "Refactoring Website", "Make our Website responsive"]
status = ["Pending", "On Going", "Accepted by the organization", "Declined by organization", "Rejected by the team", "Done"]
some = ["Translation", "All in blue", "picture uploading", "banners", "specific form", "trello integration"]
20.times do
budget = (100..40_000).to_a.sample
 project = Project.new(
    title: project_titles.sample,
    description: Faker::Lorem.paragraph,
    budget: budget,
    price_cents: budget * 100,
    due_date: Faker::Date.forward(100),
    status: status.sample,
    organization: Organization.all.sample,
    db_sql: [true, false].sample,
    maps: [true, false].sample,
    forms: [true, false].sample,
    mail_integration: [true, false].sample,
    payment_integration: [true, false].sample,
    sign_up_log_in: [true, false].sample,
    landing_page: [true, false].sample,
    messaging_integration: [true, false].sample,
    other: some.sample,
    )
  project.remote_photo_url = "http://res.cloudinary.com/jules/image/upload/v1519664939/seeds/#{(1..20).to_a.sample}"
  project.save
end

p "Creating teams"

20.times do
  Team.create(about_us: Faker::Lorem.paragraph)
end

p "Creating user"

20.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "password123",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    github: "https://github.com/Jb5322",
    photo: "https://source.unsplash.com/person",
    about_me: "#{Faker::SiliconValley.motto} + #{Faker::SiliconValley.quote}"
    )

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
    pitch: Faker::Lorem.paragraph,
    status: ["Pending Developer request", "Pending NGO validation", "Confirmed", "Canceled"].sample,
    team: Team.all.sample,
    project: Project.all.sample
    )
end
