class FoodTruckCuisineSerializer < ActiveModel::Serializer
  attributes :id, :cuisine_id, :food_truck_id
  # has_one :food_truck
  # has_one :cuisine
end
