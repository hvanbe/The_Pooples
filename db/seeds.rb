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
  first_name: "Blaise",
  last_name:  "Popote",
  email:      "blaise@gmail.com",
  password:   "123456",
)

alexb = User.create!(
  first_name: "Alexb",
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

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590742000/toilets/21480953106_56d4b3bd2a_c_hczfmz.jpg')
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

toilet16 = Toilet.create!(
  address: "Rue de Lausanne 15, 1201 Genève",
  name: "Beautiful Toilet",
  description: "Comfortable white seat",
  price: 15,
  user: helene
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590742000/toilets/5368299567_d2d7db4772_c_yf4jvm.jpg')
toilet16.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet17 = Toilet.create!(
  address: "Place Bel-Air 5, Lausanne, Vaud, Switzerland",
  name: "Big hole",
  description: "Just a big hole",
  price: 10,
  user: blaise
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590742000/toilets/113999600_9753173ac3_o_sdhx0a.jpg')
toilet17.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet18 = Toilet.create!(
  address: "Rue de Lyon 10, Geneva, Genève, Switzerland",
  name: "Porcelain Throne",
  description: "Don't sit, you might break it",
  price: 70,
  user: alexb
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/filios-sazeides-qeIuFR5vPm8-unsplash_rwgsph.jpg')
toilet18.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet19 = Toilet.create!(
  address: "Rue de Morges 10, Crissier, Vaud, Switzerland",
  name: "Reading Room",
  description: "Very comfortable seat to just take a moment",
  price: 30,
  user: helene
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/phil-hearing-U7PitHRnTNU-unsplash_ig9ofh.jpg')
toilet19.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet20 = Toilet.create!(
  address: "Route de Suisse 3, Versoix, Genève, Switzerland",
  name: "The potty pot",
  description: "Welcoming and clean pot",
  price: 40,
  user: alexb
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/gabor-monori-VCVI5QUvFAY-unsplash_q4kpnk.jpg')
toilet20.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet21 = Toilet.create!(
  address: "Rue de la Coupe Gordon-Bennett 4, Vernier, Genève, Switzerland",
  name: "Chiottes",
  description: "Enough to do what you got to do",
  price: 40,
  user: blaise
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/emily-silverstein-xmt2zNMPNh0-unsplash_qskvb9.jpg')
toilet21.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet22 = Toilet.create!(
  address: "Rue de Fribourg 10, Vevey, Vaud, Switzerland",
  name: "House of Ease",
  description: "Very accomodating toilet",
  price: 40,
  user: helene
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/renee-verberne-FuQBKSIc2yM-unsplash_uq3hau.jpg')
toilet22.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet23 = Toilet.create!(
  address: "Rue de Champsabé 12, Crans-Montana, Valais/Wallis, Switzerland",
  name: "Long Drop",
  description: "Take all the time you need",
  price: 100,
  user: alex
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741725/toilets/filios-sazeides-iE48PAkYy0w-unsplash_pcb87i.jpg')
toilet23.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet24 = Toilet.create!(
  address: "Rue de Neuchâtel 12, Yverdon-les-Bains, Vaud, Switzerland",
  name: "Gardyloo",
  description: "High sit for tall people",
  price: 130,
  user: blaise
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741724/toilets/designclass-mYlpbvnCA1o-unsplash_ilfyds.jpg')
toilet24.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet25 = Toilet.create!(
  address: "Rue de l'Athénée 17, Geneva, Genève, Switzerland",
  name: "Johnny House",
  description: "Incredible experience at Johny's pink toilet",
  price: 150,
  user: helene
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741724/toilets/ingo-hamm-hevMCro8PPY-unsplash_qbhga2.jpg')
toilet25.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet26 = Toilet.create!(
  address: "Rue de Clodevis 14, Sion, Valais/Wallis, Switzerland",
  name: "Japanese toilet",
  description: "Self-cleaning toilet",
  price: 40,
  user: blaise
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741723/toilets/curology--CzMaAShQP8-unsplash_szvoji.jpg')
toilet26.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet27 = Toilet.create!(
  address: "Rue du Grand-Chêne 20, Lausanne, Vaud, Switzerland",
  name: "Long Drop",
  description: "Peace and quiet for a delightful private moment",
  price: 90,
  user: alex
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741723/toilets/francesca-tosolini-FX1EbT-jKBQ-unsplash_lcbb3y.jpg')
toilet27.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet28 = Toilet.create!(
  address: "Rue de Chamblon 10, Yverdon-les-Bains, Vaud, Switzerland",
  name: "Thunder Box",
  description: "Unique experience, travel with Thunder Box",
  price: 70,
  user: alex
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590741723/toilets/99-films-9K-rMgWLCYM-unsplash_yeyqea.jpg')
toilet28.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


toilet29 = Toilet.create!(
  address: "Rue de Morat 4, Fribourg - Freiburg, Fribourg/Freiburg, Switzerland",
  name: "The Office",
  description: "Don't loose time, work and do!",
  price: 50,
  user: alexb
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590673982/toilets/d6zas5wmhjinux44r2k03roz1fov.jpg')
toilet29.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

toilet30 = Toilet.create!(
  address: "Rue de la Blancherie 3, Sion, Valais/Wallis, Switzerland",
  name: "Comfort Station",
  description: "Cushion seat, come and sit for hours",
  price: 80,
  user: alexb
)

file = URI.open('https://res.cloudinary.com/blaisepop/image/upload/v1590668166/toilets/1136a2llyl3brqzg8r9crwv5zuwg.jpg')
toilet30.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Creating bookings"
booking = Booking.create!(
  entry_time: DateTime.now,
  exit_time: DateTime.now,
  user: alex,
  toilet: toilet
)
