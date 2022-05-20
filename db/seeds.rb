# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Service.destroy_all

admin = User.create(email: 'admin@farm.com', password: 'password')
user_a = User.create(email: 'a@farm.com', password: 'password')
user_b = User.create(email: 'b@farm.com', password: 'password')
user_c = User.create(email: 'c@farm.com', password: 'password')
user_d = User.create(email: 'd@farm.com', password: 'password')

Service.create(
    provider_id: user_a.id,
    title: "Grain Harvesting", 
    about: "We have three grain harvesters available throughout NSW.", address_line1: "185 Morgan St", 
    city: "Wagga Wagga", 
    state: "NSW", 
    postal_code: "2650", 
    country: "Australia", 
    lat: -35.114021, 
    lng: 147.359726, 
    price: 600, 
    price_unit: "per hr", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/grainharvester1.jpg"), filename: "grainharvester1.jpg", content_type: "image/jpg")

 
