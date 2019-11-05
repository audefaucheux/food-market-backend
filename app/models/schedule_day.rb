class ScheduleDay < ApplicationRecord
  belongs_to :market
  belongs_to :food_truck
  validates :date, uniqueness: true
end
