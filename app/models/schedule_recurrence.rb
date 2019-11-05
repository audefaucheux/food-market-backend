class ScheduleRecurrence < ApplicationRecord
  belongs_to :market
  belongs_to :food_truck
  # validates :weekday, uniqueness: true
  validates :weekday, presence: true
  validates :from_time, presence: true
  validates :to_time, presence: true
  # validate :unique_week_day_per_truck

  # def unique_week_day_per_truck
  #   if weekday === "Monday"
  #     errors.add(:weekday, "can't be Monday")
  #   end
  # end

end
