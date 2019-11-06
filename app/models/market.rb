class Market < ApplicationRecord
  has_many :schedule_recurrences
  # has_many :schedule_days
end
