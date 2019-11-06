# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ScheduleDay.destroy_all
ScheduleRecurrence.destroy_all
Market.destroy_all
FoodTruckCuisine.destroy_all
FoodTruck.destroy_all
Cuisine.destroy_all
User.destroy_all 

aude = User.create(email: "aude53@gmail.com", password: "aude")
tom = User.create(email: "tom@gmail.com", password: "tom")

canadian = Cuisine.create(name: "Canadian")
french = Cuisine.create(name: "French")
italian = Cuisine.create(name: "Italian")
japanese = Cuisine.create(name: "Japanese")

poutinerie = FoodTruck.create(name: "The Poutinerie", user: aude, description:"Poutine Purveyors - London's proper poutine Brick Lane market on Sundays", profile_picture:"https://www.veganfoodandliving.com/wp-content/uploads/2017/07/Eat-North-1.jpg", twitter_account:"@The Poutinerie")
fat_food = FoodTruck.create(name: "The Fat Food", user: tom, description:"Get Fat", profile_picture:"", twitter_account:"@Fat Place" )
mama_mia = FoodTruck.create(name: "Mama Mia", user: aude, description:"pizza !", profile_picture:"https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco/https%3A%2F%2Fstorage.googleapis.com%2Fgen-atmedia%2F3%2F2018%2F03%2F55cd28cae8ee78fe1e52ab1adc9eafff24c9af92.jpeg", twitter_account:"@Mama Mia" )

ft_cuisine_1 = FoodTruckCuisine.create(cuisine_id: canadian.id, food_truck_id: poutinerie.id)
ft_cuisine_2 = FoodTruckCuisine.create(cuisine_id: french.id, food_truck_id: poutinerie.id)
ft_cuisine_3 = FoodTruckCuisine.create(cuisine_id: french.id, food_truck_id: fat_food.id)
ft_cuisine_4 = FoodTruckCuisine.create(cuisine_id: italian.id, food_truck_id: mama_mia.id)

brick_lane_upmarket = Market.create(name: "Brick Lane Upmarket", address_1: "The Truman Brewery", address_2: "91 Brick Ln", postcode: "E1 6QL", town: "London", latitude:"51.520193", longitude:"-0.071876")
leather_lane_market = Market.create(name: "Leather Lane Street Market", address_1: "Leather Ln", address_2: "Holborn", postcode: "EC1N 7TJ", town: "London", latitude:"51.520148", longitude:"-0.109413")
whitecross_market = Market.create(name: "Whitecross Market", address_1: "Whitecross St", address_2: "", postcode: "EC1Y 8JL", town: "London", latitude:"51.523951", longitude:"-0.093519")

schedule1Rec = ScheduleRecurrence.create(day_num: 1, from_time: "11:30", to_time: "15:00", market_id: brick_lane_upmarket.id, food_truck_id: poutinerie.id)
schedule2Rec = ScheduleRecurrence.create(day_num: 2, from_time: "11:30", to_time: "15:00", market_id: whitecross_market.id, food_truck_id: poutinerie.id)
schedule3Rec = ScheduleRecurrence.create(day_num: 2, from_time: "10:30", to_time: "15:00", market_id: leather_lane_market.id, food_truck_id: fat_food.id)

# schedule2Day = ScheduleDay.create(date: Date.new(2019, 11, 15), from_time: "11:30", to_time: "15:00", available: true, market_id: whitecross_market.id, food_truck_id: poutinerie.id)