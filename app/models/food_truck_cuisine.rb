class FoodTruckCuisine < ApplicationRecord
  belongs_to :food_truck
  belongs_to :cuisine
end
