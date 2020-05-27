# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating users...'
LBowman = User.new(
  first_name: "Lennard",
  last_name: "Bowman",
  email: "LennardBowman@gmail.com",
  password: "Lennard321",
  phone_number: "0784369182"
  )
  LBowman.save!

ABuchler = User.new(
  first_name: "Alexandre",
  last_name: "Buchler",
  email: "alexandrebuchler@hotmail.com",
  password: "Abuchler6791",
  phone_number: "0792004881"
  )
  ABuchler.save!

  BLarsen = User.new(
  first_name: "Benjamin",
  last_name: "Larsen",
  email: "Benjamin@Larsen.ch",
  password: "kagenas9213145k",
  phone_number: "0794110043"
  )
  BLarsen.save!

puts "Faker users"
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  user.save!
end

  RedToilet = Toilet.new(
    address: "Route de roman 98",
    name: "Luxury red toilet",
    description: "After spending 15 minutes on this toilet you will not want to sit on any other toilet again",
    price: 45,
    user_id: 1
  )
  RedToilet.save!

puts "Generating perfect toilets"
50.times do
  toilet = Toilet.new(
    address: Faker::Address.full_address,
    name: Faker::Artist.name,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price: Faker::Number.within(range: 5..80),
    user_id: Faker::Number.within(range: 1..10)
  )
  toilet.save!
end
