# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Species.destroy_all
Plant.destroy_all

alex =  User.create({username: 'test', name:"alex", email:"alex@test.com", password:"test"})
joe = User.create({username: 'jojo', name:"joe", email:"joe@test.com", password:"test"})
spider = Species.create({common_name: "spider plant",
 scientific_name: "big spidey",
 default_water_interval: 3,
 default_water_amount: "Medium",
 heat_preference: "high",
 light_preference: "low",
 toxicity: "not" })

 bobby = Plant.create(name: "Bobby", description: "lives in a vase in the bathroom", user: alex, species: spider)
 john = Plant.create(name: "John", description: "dead but still in the hallway", user: alex, species: spider)
 gyro = Plant.create(name: "Gyro", description: "lives in a box", user: alex, species: spider)