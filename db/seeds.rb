# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Application.destroy_all
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
     description: Faker::Lorem.paragraph,
     name: Faker::Company.name,
     password: "password123"
    )
  organization.remote_pic_url_url = "https://source.unsplash.com/weekly?company"
  organization.save

end

p "Creating projects"


project_titles = ["Google Maps integration", "Complete Website", "Sign Up", "Payement integration", "Refactoring Website", "Make our Website responsive"]
status = ["Pending", "Confirmed by the team", "Accepted by the organization", "Declined by organization", "Rejected by the team"]
20.times do
 project = Project.new(
    title: project_titles.sample,
    description: Faker::Lorem.paragraph,
    budget: (100..40_000).to_a.sample,
    due_date: Faker::Date.forward(100),
    status: status.sample
    )
  project.remote_pic_url_url = "http://res.cloudinary.com/jules/image/upload/v1519664939/seeds/#{(1..20).to_a.sample}"
  project.save
end

p "Creating teams"

20.times do
  Team.create(about_us: Faker::Lorem.paragraph)
end

p "Creating user"

20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "password123",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    github: "https://github.com/Jb5322",
    pic_url: "https://source.unsplash.com/person",
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
  Application.create(
    pitch: Faker::Lorem.paragraph,
    accepted: [true, false].sample,
    team: Team.all.sample,
    project: Project.all.sample
    )
end
