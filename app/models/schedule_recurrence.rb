class ScheduleRecurrence < ApplicationRecord
  belongs_to :market
  belongs_to :food_truck
  validates :day_num, uniqueness: {scope: :food_truck_id}
  validates :day_num, presence: true
  validates :from_time, presence: true
  validates :to_time, presence: true
end
