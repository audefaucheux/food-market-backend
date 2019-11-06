class FoodTruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :profile_picture, :twitter_account, :archived, :cuisines
  # has_many :cuisines
  has_many :schedule_recurrences
  has_many :markets
  has_one :user

end
