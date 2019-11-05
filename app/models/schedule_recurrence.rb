class ScheduleRecurrence < ApplicationRecord
  belongs_to :market
  belongs_to :food_truck
  # validates :day_num, uniqueness: true
  validates :day_num, presence: true
  validates :from_time, presence: true
  validates :to_time, presence: true
  # validate :unique_week_day_per_truck

  # def unique_week_day_per_truck
  #   if day_num === 1
  #     errors.add(:day_num, "can't be Monday")
  #   end
  # end

end
