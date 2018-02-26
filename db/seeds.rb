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
Team_member.destroy_all
Team.destroy_all
User.destroy_all


20.times do
  Application.create(
    pitch: Faker::Lorem.paragraph,
    accepted: [true, false].sample,
    user:
    )

end
