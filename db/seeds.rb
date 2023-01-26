
puts 'clearing db'


Inventory.destroy_all
Garage.destroy_all
BikePart.destroy_all
Bicycle.destroy_all
User.destroy_all
Part.destroy_all

puts 'seeding parts'
p1 = Part.create(
    component: 'frame', 
    make: 'colnago', 
    model: 'espirit', 
    material: 'steel', 
    size: 54.00, 
    metric: true, 
    weight: 25.00, 
    price: 1250.00, 
    species: 'road' 
)

p2 = Part.create(
    component: 'fork', 
    make: 'colnago', 
    model: 'espirit', 
    material: 'steel', 
    size: 1.00, 
    metric: true, 
    weight: 7, 
    price: 500.00, 
    species: 'road' 
)

p3 = Part.create(
    component: 'saddle', 
    make: 'Selle San Marcos', 
    model: 'concor', 
    material: 'leather', 
    size: 115.00, 
    metric: true, 
    weight: 2.00, 
    price: 125.00, 
    species: 'road'
)
puts 'parts seeded'

puts 'seeding bike'
b1 = Bicycle.create(
    name: 'Wild Hawg', 
    species: 'gravel', 
    frame: 'Jamis Renegade', 
    fork: 'Jamis Adventure Eco', 
    handlebars: 'Ritchey Evo Max' , 
    bar_tape: 'supacaz', 
    wheel: 'WTB tubeless', 
    tire: 'Panaracer Gravel King', 
    headset: 'FSA Orbit', 
    stem: 'Ritchey 4 Axis', 
    cranks: 'FSA Gossamer', 
    pedals: 'Crank Brothers Stamp', 
    seatpost: 'Ritche', 
    saddle: 'Brooks B-17', 
    brake: 'TRP Spyres', 
    shifter: 'Shimano Tiagra', 
    front_d: 'Shimano Tiagra', 
    back_d: 'Shimano Tiagra', 
    chain: 'Shimano Tiagra', 
    image_url: 'https://www.jamisbikes.com/wp-content/uploads/2023/01/22_renegades2-praxis_root_beer.png'
)

b2 = Bicycle.create(
    name: 'Pony', 
    species: 'road', 
    frame: 'Mondonico', 
    fork: 'Mondonico', 
    handlebars: 'Salsa 144', 
    bar_tape: 'yeller', 
    wheel: 'Mavic OpenPro' , 
    tire: 'Continental GatorSkins', 
    headset: 'Shimano DuraAce', 
    stem: 'Quill', 
    cranks: 'Shimano DuraAce', 
    pedals: 'CrankBrothers EggBeaters', 
    seatpost: 'Thompson', 
    saddle: 'Brooks', 
    brake: 'Shimano Ultegra', 
    shifter: 'Shimano Ultegra', 
    front_d: 'Shimano Ultegra', 
    back_d: 'Shimano Ultegra', 
    chain: 'Shimano Ultegra', 
    image_url: 'https://i.imgur.com/kdue3Eg.jpeg', 
)

b3 = Bicycle.create(
    name: 'GroceryGetter', 
    species: 'Bianchi', 
    frame: 'Pista', 
    fork: 'Pista', 
    handlebars: 'Drops', 
    bar_tape: 'n/a', 
    wheel: 'Velocity Deep V', 
    tire: 'Continental Gatorskins', 
    headset: 'Chris King', 
    stem: 'Salsa', 
    cranks: 'Campagnolo Record', 
    pedals: 'Shimano SPD', 
    seatpost: 'Thompson' , 
    saddle: 'Selle San Marcos Concor', 
    brake: nil, 
    shifter: nil, 
    front_d: nil, 
    back_d: nil, 
    chain: 'BMX', 
    image_url: 'https://i.imgur.com/kdue3Eg.jpeg' , 
)
puts 'bike seeded'

puts 'seeding users'
u1 = User.create(
    first_name: 'John',
    last_name: 'Doe',
    user_name: 'JohnDoe', 
    password: "123456", 
    email: 'johndoe@gmail.com'
)

u2 = User.create(
    first_name: 'Jane',
    last_name: 'Doe',
    user_name: 'JaneDoe', 
    password: "123456", 
    email: 'janeDoe@gmail.com' 
)

u3 = User.create(
    first_name: 'Jim',
    last_name: 'Doe',
    user_name: 'jim_doe',
    password: "123456", 
    email: 'jim.doe@gmail.com'
)
puts 'users seeded'

#JOIN TABLES 

puts 'seeding inventory'
i1 = Inventory.create(
    user_id: u1.id, 
    part_id: p1.id, 
    quantity: 5
)
i2 = Inventory.create(
    user_id: u2.id, 
    part_id: p2.id, 
    quantity: 20
)
i3 = Inventory.create(
    user_id: u3.id, 
    part_id: p3.id, 
    quantity: 1 
)

puts 'inventory seeded'

puts 'seeding garage'
g1 = Garage.create(
    user_id: u1.id, 
    bicycle_id: b1.id, 
)

g2 = Garage.create(
    user_id: u2.id, 
    bicycle_id: b2.id 
)

g3 = Garage.create(
    user_id: u3.id, 
    bicycle_id: b3.id 
)
puts 'inventory seeded'

puts 'seeding bike parts'
bp1 = BikePart.create(
    bicycle_id: b1.id, 
    part_id: p1.id, 
    quantity: 1
)

bp2 = BikePart.create(
    bicycle_id: b2.id, 
    part_id: p2.id , 
    quantity: 2
)

bp3 = BikePart.create(
    bicycle_id: b3.id, 
    part_id: p3.id, 
    quantity: 1
)
puts 'bike parts seeded'

puts "seeding complete✅"