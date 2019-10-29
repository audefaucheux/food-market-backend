# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FoodTruck.destroy_all
User.destroy_all 

aude = User.create(email: "aude53@gmail.com", password: "aude")

poutinerie = FoodTruck.create(name: "The Poutinerie", user: aude)