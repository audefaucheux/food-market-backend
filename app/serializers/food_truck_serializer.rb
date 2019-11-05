class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_picture, :twitter_account, :archived 
  has_many :cuisines
  has_many :schedule_recurrences
  # has_many :schedule_days
  has_one :user
end
