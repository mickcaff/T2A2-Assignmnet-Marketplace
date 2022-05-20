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

service_a_1 = Service.create(
    provider_id: user_a.id,
    title: "Grain Harvesting", 
    about: "We have three grain harvesters available throughout NSW.", 
    address_line1: "185 Morgan St", 
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

service_b_1 = Service.create(
    provider_id: user_b.id,
    title: "Cattle Transportation", 
    about: "Cattle transportation to any location in Australia. B-Double. Based in Tamworth, NSW.", 
    address_line1: "406 Peel St", 
    city: "Tamworth", 
    state: "NSW", 
    postal_code: "2340", 
    country: "Australia", 
    lat: -31.091868, 
    lng: 150.931380, 
    price: 4.1, 
    price_unit: "per km", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/cattletruck1.jpeg"), filename: "cattletruck1.jpeg", content_type: "image/jpg")

service_c_1 = Service.create(
    provider_id: user_c.id,
    title: "Aerial Spraying", 
    about: "Aerial spraying around Dalby,Qld. B-Double.", 
    address_line1: "130 Cunningham St", 
    city: "Dalby", 
    state: "QLD", 
    postal_code: "4405", 
    country: "Australia", 
    lat: -27.183103, 
    lng: 151.263928, 
    price: 30, 
    price_unit: "per ha", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/airspray1.jpeg"), filename: "airspray1.jpeg", content_type: "image/jpg")

Conversation.create(sender_id: 2, receiver_id: 1)
Conversation.create(sender_id: 2, receiver_id: 3)
Conversation.create(sender_id: 2, receiver_id: 4)
Conversation.create(sender_id: 2, receiver_id: 5)


# service_a_1.comments.create(
#     content: "Great contractor! Operation ran very smoothly.",
#     user_id: user_d.id,
# )
# Comment.create(
#     content: "Delivered the cattle in good condition. Will definitely use again.",
#     service_id: service_b_1.id,
#     user_id: user_c.id,
# )