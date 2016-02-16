# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  Location.create!(
    city: Faker::Address.city,
    state: Faker::Address.state,
    street_address: Faker::Address.street_address,
    zipcode: Faker::Address.zip_code,
    country: Faker::Address.country
  )
end