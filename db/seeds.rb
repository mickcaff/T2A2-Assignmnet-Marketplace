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
admin.add_role :admin
user_a = User.create(email: 'a@farm.com', password: 'password')
user_a.add_role :provider
user_b = User.create(email: 'b@farm.com', password: 'password')
user_b.add_role :provider
user_c = User.create(email: 'c@farm.com', password: 'password')
user_c.add_role :provider
user_d = User.create(email: 'd@farm.com', password: 'password')
user_d.add_role :provider
user_e = User.create(email: 'e@farm.com', password: 'password')
user_e.add_role :provider

Profile.create(
    first_name: "Admin",
    last_name: "Admin",
    username: "Admin",
    user_id: 1
)

Profile.create(
    first_name: "Joe",
    last_name: "Bloe",
    username: "JBloe",
    user_id: 2
).avatar_image.attach(io: File.open("app/assets/images/seed_images/avatars/avatar1.png"), filename: "avatar1.png", content_type: "image/png")

Profile.create(
    first_name: "Jack",
    last_name: "Black",
    username: "JBlack",
    user_id: 3
).avatar_image.attach(io: File.open("app/assets/images/seed_images/avatars/avatar2.png"), filename: "avatar2.png", content_type: "image/png")

Profile.create(
    first_name: "Sally",
    last_name: "Brown",
    username: "JBrown",
    user_id: 4
).avatar_image.attach(io: File.open("app/assets/images/seed_images/avatars/avatar3.png"), filename: "avatar3.png", content_type: "image/png")

Profile.create(
    first_name: "Peter",
    last_name: "Smith",
    username: "PSmith",
    user_id: 5
).avatar_image.attach(io: File.open("app/assets/images/seed_images/avatars/avatar4.png"), filename: "avatar4.png", content_type: "image/png")

Profile.create(
    first_name: "Jess",
    last_name: "Jones",
    username: "JJones",
    user_id: 6
).avatar_image.attach(io: File.open("app/assets/images/seed_images/avatars/avatar5.png"), filename: "avatar5.png", content_type: "image/png")


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

service_d_1 = Service.create(
    provider_id: user_d.id,
    title: "Cotton Picking", 
    about: "Round bail cotton picking services. Available across Southern Qld and Northern NSW.", 
    address_line1: "102 Marshall St", 
    city: "Goondiwindi", 
    state: "QLD", 
    postal_code: "4390", 
    country: "Australia", 
    lat: -28.547047, 
    lng: 150.306902, 
    price: 400, 
    price_unit: "per hr", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/picker1.jpeg"), filename: "picker1.jpeg", content_type: "image/jpg")

service_e_1 = Service.create(
    provider_id: user_e.id,
    title: "Cotton Planting", 
    about: "Cotton planting with a double disc John Deere planter, with dynamic pressure adjustment. Available across Southern Qld and Northern NSW.", 
    address_line1: "140 Maitland St", 
    city: "Narrabri", 
    state: "NSW", 
    postal_code: "2390", 
    country: "Australia", 
    lat: -30.324978, 
    lng: 149.782959, 
    price: 350, 
    price_unit: "per hr", 
    additional_charges: "Seed can be provided",
).cover_image.attach(io: File.open("app/assets/images/seed_images/cottonplant1.png"), filename: "cottonplant1.png", content_type: "image/png")

service_a_2 = Service.create(
    provider_id: user_a.id,
    title: "Fruit Pickers", 
    about: "Ten Person fruit picking team based in .", 
    address_line1: "245 Banna Ave", 
    city: "Griffith", 
    state: "NSW", 
    postal_code: "2680", 
    country: "Australia", 
    lat: -34.287923, 
    lng: 146.046706, 
    price: 35, 
    price_unit: "per hr", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/fruitpick1.jpeg"), filename: "fruitpick1.jpeg", content_type: "image/jpg")

service_b_2 = Service.create(
    provider_id: user_b.id,
    title: "Grain Transportation", 
    about: "Grain transport from any location in the WA wheatbelt.", 
    address_line1: "23 Andrew St", 
    city: "Esperance", 
    state: "WA", 
    postal_code: "6450", 
    country: "Australia", 
    lat: -33.861352, 
    lng: 121.891616, 
    price: 4.5, 
    price_unit: "per km", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/graintransport.png"), filename: "graintransport.png", content_type: "image/png")

service_c_2 = Service.create(
    provider_id: user_c.id,
    title: "Apple Picker", 
    about: "Mechanical apple picker and team based in Batlow, NSW.", 
    address_line1: "5 Mayday Rd", 
    city: "Batlow", 
    state: "NSW", 
    postal_code: "2730", 
    country: "Australia", 
    lat: -35.520135, 
    lng: 148.145700, 
    price: 4.5, 
    price_unit: "per km", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/apple1.png"), filename: "apple1.png", content_type: "image/png")

service_d_2 = Service.create(
    provider_id: user_d.id,
    title: "Grape Harvester", 
    about: "Grape harvester in the Clare, SA region.", 
    address_line1: "253 Main N Rd", 
    city: "Clare", 
    state: "SA", 
    postal_code: "5453", 
    country: "Australia", 
    lat: -33.833500, 
    lng: 138.612014, 
    price: 4.5, 
    price_unit: "per km", 
    additional_charges: "none",
).cover_image.attach(io: File.open("app/assets/images/seed_images/grape1.png"), filename: "grape1.png", content_type: "image/png")

Comment.create(
    content: "Great service!",
    service_id: 1,
    user_id: 3
)

Comment.create(
    content: "Will use again!",
    service_id: 2,
    user_id: 4
)

Comment.create(
    content: "Very dependable!",
    service_id: 3,
    user_id: 5
)

Comment.create(
    content: "Did a great job!",
    service_id: 4,
    user_id: 2
)

Conversation.create(sender_id: 2, receiver_id: 1)
Conversation.create(sender_id: 2, receiver_id: 3)
Conversation.create(sender_id: 2, receiver_id: 4)
Conversation.create(sender_id: 2, receiver_id: 5)
Conversation.create(sender_id: 2, receiver_id: 6)

Conversation.create(sender_id: 3, receiver_id: 1)
Conversation.create(sender_id: 3, receiver_id: 4)
Conversation.create(sender_id: 3, receiver_id: 5)
Conversation.create(sender_id: 3, receiver_id: 6)

Conversation.create(sender_id: 4, receiver_id: 1)
Conversation.create(sender_id: 4, receiver_id: 5)
Conversation.create(sender_id: 4, receiver_id: 6)

Conversation.create(sender_id: 5, receiver_id: 1)
Conversation.create(sender_id: 5, receiver_id: 6)

Conversation.create(sender_id: 6, receiver_id: 1)


# service_a_1.comments.create(
#     content: "Great contractor! Operation ran very smoothly.",
#     user_id: user_d.id,
# )
# Comment.create(
#     content: "Delivered the cattle in good condition. Will definitely use again.",
#     service_id: service_b_1.id,
#     user_id: user_c.id,
# )