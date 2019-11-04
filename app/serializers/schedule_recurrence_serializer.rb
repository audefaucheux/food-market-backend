class ScheduleRecurrenceSerializer < ActiveModel::Serializer
  attributes :id, :weekday, :from_time, :to_time, :market
  # has_one :market
  # has_one :food_truck
end
