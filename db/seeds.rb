require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy all"
Booking.destroy_all
Toilet.destroy_all
User.destroy_all

puts "Creating users"
alex = User.create!(
  first_name: "Alexandre",
  last_name:  "Bouvier",
  email:      "alex@gmail.com",
  password:   "azerty",
)

helene = User.create!(
  first_name: "Helene",
  last_name:  "van Berchem",
  email:      "helene@gmail.com",
  password:   "0k0k0k",
)

puts "Creating toilets"
toilet = Toilet.create!(
  address: "Rue de Lausanne 15, 1201 Genève",
  name: "Beautiful Toilet",
  description: "Comfortable white seat",
  price: 15,
  user: helene
)

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating bookings"
booking = Booking.create!(
  entry_time: DateTime.now,
  exit_time: DateTime.now,
  user: alex,
  toilet: toilet
)
