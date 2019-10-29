class User < ApplicationRecord
  has_many :food_trucks
  has_secure_password
end
