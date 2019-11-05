class ScheduleRecurrenceSerializer < ActiveModel::Serializer
  attributes :id, :day_num, :from_time, :to_time, :market
  # has_one :market
end
