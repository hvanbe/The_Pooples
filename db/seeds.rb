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

toilet1 = Toilet.create!(
  address: "Route de Roman 28, Echichens, Vaud, Switzerland",
  name: "Countryside Toilet",
  description: "This countryside toilet is the perfect place for a decompressing experience away from the large city",
  price: 20,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet2 = Toilet.create!(
  address: "Rue du Grand-Pont 2, Lausanne, Vaud, Switzerland",
  name: "Comfortable toilet with bidet",
  description: "Not only is the toilet great but the bidet that comes with it rounds up this perfect experience",
  price: 30,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet3 = Toilet.create!(
  address: "Avenue des Reneveyres 4, Morges, Vaud, Switzerland",
  name: "Pot",
  description: "This toilet really isn't it but at least it's cheap",
  price: 2,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet4 = Toilet.create!(
  address: "Chemin Baussan 28, Bourg-en-Lavaux, Vaud, Switzerland",
  name: "Thunder box",
  description: "This toilet is located in my beautiful backyard, don't worry the dog won't bite",
  price: 15,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet5 = Toilet.create!(
  address: "Avenue du Général Guisan 56, Vevey, Vaud, Switzerland",
  name: "Privy",
  description: "Inside toilet with a window",
  price: 20,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet6 = Toilet.create!(
  address: "Avenue du Général Guisan 61, Pully, Vaud, Switzerland",
  name: "Choo",
  description: "Lakeside bathroom time.",
  price: 30,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet7 = Toilet.create!(
  address: "Chemin de Beau-Cèdre 23, Jouxtens-Mézery, Vaud, Switzerland",
  name: "Public and unclean W.C",
  description: "As cheap as it gets. Won't be great but will accomplish the goal in an inexpensive manner.",
  price: 1,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet8 = Toilet.create!(
  address: "Chemin Charles-Gide 20, Lausanne, Vaud, Switzerland",
  name: "Small toilet",
  description: "Will break if you are a bigger individual, caution before booking!",
  price: 22,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet9 = Toilet.create!(
  address: "Route d'Yverdon 10, Yverdon-les-Bains, Vaud, Switzerland",
  name: "Comfy toilet & special soft toilet paper",
  description: "Great expensive toilet paper imported straight from Japan",
  price: 35,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet10 = Toilet.create!(
  address: "Route de la Corniche 2, Epalinges, Vaud, Switzerland",
  name: "Camping car toilet",
  description: "Not much privacy but it's a cheap option",
  price: 5,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet11 = Toilet.create!(
  address: "Avenue Auguste Tissot 10, Lausanne, Vaud, Switzerland",
  name: "Luxury heated seating toilet",
  description: "This heating system will make this the most cozy and great experience you will ever have in the bathroom",
  price: 60,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet12 = Toilet.create!(
  address: "Route de St-Prex 5, Saint-Prex, Vaud, Switzerland",
  name: "Reading toilet",
  description: "This toilet has a table next to it with the newest newspapers to read as you use the toilet",
  price: 18,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet13 = Toilet.create!(
  address: "Route de Morges 10, Lonay, Vaud, Switzerland",
  name: "Upgraded seating toilet",
  description: "This seat is more comfortable than any seat you'll ever use",
  price: 28,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet14 = Toilet.create!(
  address: "Route de Renens 22, Crissier, Vaud, Switzerland",
  name: "Wooden toilet",
  description: "Pure prestine swiss wood",
  price: 7,
  user: helene
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet15 = Toilet.create!(
  address: "Route de Cossonay 24, Mex (VD), Vaud, Switzerland",
  name: "Metal toilet",
  description: "Might not look like it in the picture but this metal toilet is as comfortable as it comes",
  price: 41,
  user: alex
)
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
toilet15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating bookings"
booking = Booking.create!(
  entry_time: DateTime.now,
  exit_time: DateTime.now,
  user: alex,
  toilet: toilet
)
