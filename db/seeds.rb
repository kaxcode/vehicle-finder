# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# creates users/sellers
lavern_weldy = User.create!(name: "Lavern Weldy", email: "lavern@example.com", password: "123456")
raymond_courchesne = User.create!(name: "Raymond Courchesne", email: "raymond@example.com", password: "123456")
rolando_mackenzie = User.create!(name: "Rolando Mackenzie", email: "rolando@example.com", password: "123456")
jermaine_lewellyn = User.create!(name: "Jermaine Lewellyn", email: "jermaine@example.com", password: "123456")
codi_keech = User.create!(name: "Codi Keech", email: "codi@example.com", password: "123456")


# Creates listings
listing_1 = Listing.create!(
  year: 1990,
  make: "Volkswagen",
  model: "Beetle",
  description: "Pretty old, but still runs",
  price: 3000,
  color: "Orange",
  transmission: "12v",
  body_type: "Coupe",
  vehicle_type: "Car",
  vehicle_image: File.open(Rails.root.join("db/seeds/beetle.jpg")),
  user: lavern_weldy
)

listing_2 = Listing.create!(
  year: 2016,
  make: "BWM",
  model: "M3",
  description: "Farily new and in good condtion",
  price: 50000,
  color: "Grey",
  transmission: "Manual",
  body_type: "Sedan",
  vehicle_type: "Car",
  vehicle_image: File.open(Rails.root.join("db/seeds/bmw-front.jpg")),
  user: raymond_courchesne
)

listing_3 = Listing.create!(
  year: 2010,
  make: "BWM",
  model: "F800S",
  description: "In Great condtion",
  price: 7000,
  color: "Yellow/Black",
  transmission: "n/a",
  body_type: "n/a",
  vehicle_type: "Motorcycle",
  vehicle_image: File.open(Rails.root.join("db/seeds/bmw-motorcycle.jpg")),
  user: raymond_courchesne
)

listing_4 = Listing.create!(
  year: 2015,
  make: "Vespa",
  model: "Sprint S 150 3V ABS ABS",
  description: "In good condtion",
  price: 5000,
  color: "Green",
  transmission: "n/a",
  body_type: "Scooter",
  vehicle_type:"Motorcycle",
  vehicle_image: File.open(Rails.root.join("db/seeds/green-vespa.jpg")),
  user: raymond_courchesne
)

listing_5 = Listing.create!(
  year: 2005,
  make: "Jeep",
  model: "Wrangler",
  description: "Old but still running",
  price: 9000,
  color: "White",
  transmission: "unknown",
  body_type: "unknow",
  vehicle_type: "Truck",
  vehicle_image: File.open(Rails.root.join("db/seeds/jeep.jpg")),
  user: rolando_mackenzie
)

listing_6 = Listing.create!(
  year:2017,
  make: "KTM",
  model:"RC 200",
  description: "New",
  price: 500000,
  color: "White/Orange/Black",
  transmission: "n/a",
  body_type: "n/a",
  vehicle_type: "Motorcycle",
  vehicle_image: File.open(Rails.root.join("db/seeds/ktm-bike.jpg")),
  user: jermaine_lewellyn
)

listing_7 = Listing.create!(
  year: 2017,
  make: "Porsche",
  model: "911 Carrera",
  description: "New",
  price: 95000,
  color: "Grey",
  transmission: "unknow",
  body_type: "Coupe",
  vehicle_type: "Car",
  vehicle_image: File.open(Rails.root.join("db/seeds/porshe-back.jpg")),
  user:lavern_weldy
)

listing_8 = Listing.create!(
  year: 2017,
  make: "Ford",
  model: "Chateau",
  description: "New",
  price: 70000,
  color: "White",
  transmission: "unknow",
  body_type: "Van",
  vehicle_type: "RV",
  vehicle_image: File.open(Rails.root.join("db/seeds/rv.jpg")),
  user: jermaine_lewellyn
)

listing_9 = Listing.create!(
  year: 1995,
  make: "Ford",
  model: "F150",
  description: "Old but enhanced",
  price: 10000,
  color: "Green",
  transmission: "unknown",
  body_type: "unknown",
  vehicle_type: "Truck",
  vehicle_image: File.open(Rails.root.join("db/seeds/truck.jpg")),
  user: codi_keech
)

listing_10 = Listing.create!(
  year: 1970,
  make: "Ford",
  model: "Econoline",
  description: "Solved a lot of mysteries in this one",
  price: 5000,
  color: "Blue/White",
  transmission: "unknown",
  body_type: "van",
  vehicle_type: "RV",
  vehicle_image: File.open(Rails.root.join("db/seeds/van.jpg")),
  user:codi_keech
)

# Creates reviews

review_1 = Review.create!(
  review_body: "Awesome vehicles",
  user: codi_keech
)

review_2 = Review.create!(
  review_body: "Really friendly and honest",
  user: codi_keech
)

review_3 = Review.create!(
  review_body: "Really nice",
  user: jermaine_lewellyn
)

review_4 = Review.create!(
  review_body: "Great service",
  user:lavern_weldy
)

review_5 = Review.create!(
  review_body: "Super friendly and the vehicle was in great condition",
  user:lavern_weldy
)

review_6 = Review.create!(
  review_body: "Nice exchange",
  user:raymond_courchesne
)

review_7 = Review.create!(
  review_body: "Friendly and knowledgeable",
  user:rolando_mackenzie
)
