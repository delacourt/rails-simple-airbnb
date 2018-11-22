# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Flat.destroy_all

10.times do
  flat = Flat.new(
    name:    Faker::GreekPhilosophers.unique.name,
    address:  Faker::Address.full_address,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: "#{(200..1500).to_a.sample} €",
    number_of_guest: (1..6).to_a.sample
  )
  flat.save!
end

# name, as a string
# address, as a string
# description, as a text
# price_per_night, as an integer
# number_of_guests, as an integer
