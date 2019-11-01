class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_picture, :twitter_account 
  has_many :cuisines
  has_one :user
end
