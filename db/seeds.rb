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

blaise = User.create!(
  first_name: "blaise",
  last_name:  "Popote",
  email:      "blaise@gmail.com",
  password:   "123456",
)

alexb = User.create!(
  first_name: "alexb",
  last_name:  "Buchler",
  email:      "alexb@gmail.com",
  password:   "123456",
)

puts "Creating toilets"
toilet = Toilet.create!(
  address: "Rue de Lausanne 15, 1201 Genève",
  name: "Beautiful Toilet",
  description: "Comfortable white seat",
  price: 15,
  user: helene
)

toilet = Toilet.create!(
  address: "Rue de Lausanne 15, 1201 Genève",
  name: "Beautiful Toilet",
  description: "Comfortable white seat",
  price: 15,
  user: helene
)

toilet = Toilet.create!(
  address: "Place Bel-Air 5, Lausanne, Vaud, Switzerland",
  name: "Big hole",
  description: "Just a big hole",
  price: 10,
  user: blaise
)

toilet = Toilet.create!(
  address: "Rue de Lyon 10, Geneva, Genève, Switzerland",
  name: "Porcelain Throne",
  description: "Don't sit, you might break it",
  price: 70,
  user: alexb
)

toilet = Toilet.create!(
  address: "Rue de Morges 10, Crissier, Vaud, Switzerland",
  name: "Reading Room",
  description: "Very comfortable seat to just take a moment",
  price: 30,
  user: helene
)

toilet = Toilet.create!(
  address: "Route de Suisse 3, Versoix, Genève, Switzerland",
  name: "The potty pot",
  description: "Welcoming and clean pot",
  price: 40,
  user: alexb
)

toilet = Toilet.create!(
  address: "Rue de la Coupe Gordon-Bennett 4, Vernier, Genève, Switzerland",
  name: "Chiottes",
  description: "Enough to do what you got to do",
  price: 40,
  user: blaise
)

toilet = Toilet.create!(
  address: "Rue de Fribourg 10, Vevey, Vaud, Switzerland",
  name: "House of Ease",
  description: "Very accomodating toilet",
  price: 40,
  user: helene
)

toilet = Toilet.create!(
  address: "Rue de Champsabé 12, Crans-Montana, Valais/Wallis, Switzerland",
  name: "Long Drop",
  description: "Take all the time you need",
  price: 100,
  user: alex
)

toilet = Toilet.create!(
  address: "Rue de Neuchâtel 12, Yverdon-les-Bains, Vaud, Switzerland",
  name: "Gardyloo",
  description: "High sit for tall people",
  price: 130,
  user: blaise
)

toilet = Toilet.create!(
  address: "Rue de l'Athénée 17, Geneva, Genève, Switzerland",
  name: "Johnny House",
  description: "Incredible experience at Johny's pink toilet",
  price: 150,
  user: helene
)

toilet = Toilet.create!(
  address: "Rue de Clodevis 14, Sion, Valais/Wallis, Switzerland",
  name: "Japanese toilet",
  description: "Self-cleaning toilet",
  price: 40,
  user: blaise
)

toilet = Toilet.create!(
  address: "Rue du Grand-Chêne 20, Lausanne, Vaud, Switzerland",
  name: "Long Drop",
  description: "Peace and quiet for a delightful private moment",
  price: 90,
  user: alex
)

toilet = Toilet.create!(
  address: "Rue de Chamblon 10, Yverdon-les-Bains, Vaud, Switzerland",
  name: "Thunder Box",
  description: "Unique experience, travel with Thunder Box",
  price: 70,
  user: alex
)

toilet = Toilet.create!(
  address: "Rue de Morat 4, Fribourg - Freiburg, Fribourg/Freiburg, Switzerland",
  name: "The Office",
  description: "Don't loose time, work and do!",
  price: 50,
  user: alexb
)

toilet = Toilet.create!(
  address: "Rue de la Blancherie 3, Sion, Valais/Wallis, Switzerland",
  name: "Comfort Station",
  description: "Cushion seat, come and sit for hours",
  price: 80,
  user: alexb
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
