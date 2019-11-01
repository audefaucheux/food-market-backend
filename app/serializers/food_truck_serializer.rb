class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_picture, :twitter_account 
  has_many :cuisine
  has_one :user
end
