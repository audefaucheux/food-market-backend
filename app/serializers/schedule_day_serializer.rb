class ScheduleDaySerializer < ActiveModel::Serializer
  attributes :id, :date, :from_time, :to_time
  has_one :market
  has_one :food_truck
end
