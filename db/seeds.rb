# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Market.destroy_all
FoodTruck.destroy_all
Cuisine.destroy_all
User.destroy_all 

aude = User.create(email: "aude53@gmail.com", password: "aude")
tom = User.create(email: "tom@gmail.com", password: "tom")

canadian = Cuisine.create(name: "Canadian")
french = Cuisine.create(name: "French")
italian = Cuisine.create(name: "Italian")

poutinerie = FoodTruck.create(name: "The Poutinerie", user: aude, description:"Poutine Purveyors - London's proper poutine Brick Lane market on Sundays", profile_picture:"", twitter_account:"@The Poutinerie")
fat_food = FoodTruck.create(name: "The Fat Food", user: tom, description:"Get Fat", profile_picture:"", twitter_account:"@Fat Place" )

ft_cuisine_1 = FoodTruckCuisine.create(cuisine_id: canadian.id, food_truck_id: poutinerie.id)

brick_lane_upmarket = Market.create(name: "Brick Lane Upmarket", address_1: "The Truman Brewery", address_2: "91 Brick Ln", postcode: "E1 6QL", town: "London", latitude:"51.520193", longitude:"-0.071876")
leather_lane_market = Market.create(name: "Leather Lane Street Market", address_1: "Leather Ln", address_2: "Holborn", postcode: "EC1N 7TJ", town: "London", latitude:"51.520148", longitude:"-0.109413")
whitecross_market = Market.create(name: "Whitecross Market", address_1: "Whitecross St", address_2: "", postcode: "EC1Y 8JL", town: "London", latitude:"51.523951", longitude:"-0.093519")