class User < ApplicationRecord
  has_many :food_trucks
  has_many :schedule_recurrences, through: :food_trucks
  has_many :schedule_days, through: :food_trucks

  has_secure_password
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true
end
