class FoodTruck < ApplicationRecord
  belongs_to :user
  has_many :food_truck_cuisines
  has_many :cuisines, through: :food_truck_cuisines 

  validates :name, presence: true
  validates :name, uniqueness: true

end
