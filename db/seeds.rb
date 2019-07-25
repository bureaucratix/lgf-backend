# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Plant.destroy_all

alex =  User.create({username: 'test', name:"alex", email:"alex@test.com", password:"test"})
joe = User.create({username: 'jojo', name:"joe", email:"joe@test.com", password:"test"})
spider = Species.create({common_name: "spider plant",
 scientific_name: "big spidey",
 default_water_interval: 3,
 default_water_amount: "medium",
 heat_preference: "high",
 light_preference: "low",
 toxicity: "Not Toxic" })

 custom = Species.create({
    common_name: "Custom",
    scientific_name: "",
    default_water_interval: "",
    default_water_amount: "",
    heat_preference: "",
    light_preference: "",
    toxicity: "Not Toxic" })
 

 bobby = Plant.create(name: "Bobby", water_interval: 2, last_watered_time: Time.now.httpdate - 1.days, description: "lives in a vase in the bathroom", user: alex, species: spider, img_url: "https://www.almanac.com/sites/default/files/styles/primary_image_in_article/public/image_nodes/spider-plant_t50-ss.jpg")
 john = Plant.create(name: "John", water_interval: 2, last_watered_time: Time.now.httpdate - 2.days, description: "dead but still in the hallway", user: alex, species: spider)
 gyro = Plant.create(name: "Gyro", water_interval: 2, last_watered_time: Time.now.httpdates - 1.days, description: "lives in a box", user: alex, species: spider)