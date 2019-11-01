class Cuisine < ApplicationRecord
  has_many :food_truck_cuisines
  has_many :food_trucks, through: :food_truck_cuisines
end
