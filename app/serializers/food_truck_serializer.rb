class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_picture, :twitter_account, :archived 
  has_many :cuisines
  has_one :user
end
