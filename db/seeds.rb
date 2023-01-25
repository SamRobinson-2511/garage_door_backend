
puts 'clearing db'

BikePart.destroy_all
Bicycle.destroy_all
User.destroy_all





puts 'seeding user'

u1 = User.create(first_name: 'Sam', last_name: 'Robinson', user_name: 'BikeGuy', password: '12345678', email: 'bike_guy69420@aol.com')
u2 = User.create(first_name: 'tony', last_name: 'howdy', user_name: 'Tony_Time', password: '12345678', email: 'tony_tim@aol.com')
u3 = User.create(first_name: 'User3', last_name: 'User3', user_name: 'User3', password: '18005882', email: 'user3@aol.com')



puts 'seeding bike'
b1 = Bicycle.create(name: 'Pony')
b2 = Bicycle.create(name: 'yrs')
b3 = Bicycle.create(name: 'thenbadagsd')


puts 'seeding bp'

p1 = BikePart.create(
    name: 'stem', 
    species: 'track', 
    user_id: u1.id, 
    bicycle_id: b1.id, 
    component: 'stem', 
    make: 'salsa', 
    model: 'stem - 123', 
    material: 'aluminum', 
    size: 110, 
    metric: true, 
    weight: 5.00, 
    price: 20.00
)

p2 = BikePart.create(
    name: 'green track frame', 
    species: 'track', 
    user_id: u1.id, 
    bicycle_id: b1.id, 
    component: 'frame', 
    make: 'bianchi', 
    model: 'pista', 
    material: '4130', 
    size: 56.00, 
    metric: true, 
    weight: 15.00, 
    price: 200.00
)

p3 = BikePart.create(
    name: 'track fork', 
    species: 'track', 
    user_id: u1.id, 
    bicycle_id: b1.id, 
    component: 'fork', 
    make: 'bianchi', 
    model: 'pista', 
    material: '4130', 
    size: 56,
    metric: true, 
    weight: 15.00, 
    price: 150.00
)

puts 'finis'

















# puts 'clearing database'


# BikePart.destroy_all
# Bicycle.destroy_all 
# # Garage.destroy_all
# User.destroy_all

# puts 'seeding garage'
# # g1 = Garage.create(user_id: 1)
# # g2 = Garage.create(user_id: 2)
# # g3 = Garage.create(user_id: 3)



# puts 'seeding users'
# u1 = User.create(first_name: 'Sam', last_name: 'Robinson', user_name: 'Ubu69420', email: 'test@example.com', password: '1234', zip: '60608')
# u2 = User.create(first_name: 'Stammy', last_name: 'Rowlkinson', user_name: 'Ubu6942fdasdfasdf0', email: 'test@exaasdfasdfmple.com', password: '1234gasdgasd', zip: '60609')
# u3 = User.create(first_name: 'Klammy', last_name: 'Pagaent', user_name: 'Usdfasdf0', email: 'tester@exaasdfasdfmple.com', password: '1234gasdfasdfasdgasd', zip: '606079')




# puts 'seeding bicycle'
# b1 = Bicycle.create(
#     # garage_id: g1.id,
#     name: 'pony', 
#     species: 'road',
#     # user_id: u1.id
# )

# puts 'seeding bike_parts'
# p1 = BikePart.create(
#     # component: 'frame', 
#     # make: 'bikeframe', 
#     # model: 'pista',
#     name: 'aluminum', 
#     size: '54', 
#     metric: true,
#     weight: 18.07, 
#     price: 250.00, 
#     species: 'track'
# )

# p2 = BikePart.create(
#     component: 'fork', 
#     make: 'bianchi', 
#     model: 'pista',
#     material: 'aluminum', 
#     size: '15', 
#     metric: true,
#     weight: 5, 
#     price: 125.00, 
#     species: 'track' 

# )

# p3 = BikePart.create(
#     component: 'handlebars', 
#     make: 'bianchi', 
#     model: 'pista',
#     material: 'steel', 
#     size: '12', 
#     metric: true,
#     weight: 2, 
#     price: 125.00, 
#     species: 'track' 
# )

# p4 = BikePart.create(
#     component: 'wheels', 
#     make: 'mavic', 
#     model: 'open-pro',
#     material: 'aluminum', 
#     size: '12', 
#     metric: true,
#     weight: 2, 
#     price: 400.00, 
#     species: 'track'
# )


# p5 = BikePart.create(
#     component: 'tires', 
#     make: 'continental', 
#     model: 'gatorskins',
#     material: 'kevlar', 
#     size: '23', 
#     metric: true,
#     weight: 2, 
#     price: 60.00, 
#     species: 'road'
# )

# p6 = BikePart.create(
#     component: 'headset', 
#     make: 'chris king', 
#     model: 'no-thread-set',
#     material: 'steel', 
#     size: '1 1/8', 
#     metric: false,
#     weight: 2, 
#     price: 125.00, 
#     species: 'track'
# )

# p7 = BikePart.create(
#     component: 'stem', 
#     make: 'bianchi', 
#     model: 'pista',
#     material: 'steel', 
#     size: '12', 
#     metric: true,
#     weight: 2, 
#     price: 125.00, 
#     species: 'track'
# )

# p8 = BikePart.create(
#     component: 'cranks', 
#     make: 'shimano', 
#     model: 'ultegra',
#     material: 'aluminum', 
#     size: '172.5', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'track'
# )

# p9 = BikePart.create(
#     component: 'pedals', 
#     make: 'look', 
#     model: 'dunno',
#     material: 'steel', 
#     size: 'NA', 
#     metric: true,
#     weight: 2, 
#     price: 250.00, 
#     species: 'track'
# )


# p10 = BikePart.create(
#     component: 'seatpost', 
#     make: 'thompson', 
#     model: 'triathlon',
#     material: 'aluminum', 
#     size: '12', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'track'
# )

# p11 = BikePart.create(
#     component: 'saddle', 
#     make: 'selle royale', 
#     model: 'concor',
#     material: 'leather', 
#     size: '15', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'road'
# )

# p12 = BikePart.create(
#     component: 'brakes', 
#     make: 'shimano', 
#     model: 'dura-ace',
#     material: 'aluminium', 
#     size: '100', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'road'
# )

# p13 = BikePart.create(
#     component: 'shifters', 
#     make: 'shimano', 
#     model: 'dura-ace',
#     material: 'aluminium', 
#     size: '15', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'road'
# )

# p14 = BikePart.create(
#     component: 'front_d', 
#     make: 'shimano', 
#     model: 'dura-ace',
#     material: 'aluminium', 
#     size: '15', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'road'
# )

# p15 = BikePart.create(
#     component: 'back_d', 
#     make: 'shimano', 
#     model: 'dura-ace',
#     material: 'aluminium', 
#     size: '15', 
#     metric: true,
#     weight: 2, 
#     price: 200.00, 
#     species: 'road'
# )

# p16 = BikePart.create(
#     component: 'chain', 
#     make: 'shimano', 
#     model: 'dura-ace',
#     material: 'aluminium', 
#     size: '15', 
#     metric: true,
#     weight: 20, 
#     price: 200.00, 
#     species: 'road'
# )
# puts 'bike parts seeded'

