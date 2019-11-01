class FoodTruckCuisineSerializer < ActiveModel::Serializer
  attributes :id
  has_one :food_truck
  has_one :cuisine
end
