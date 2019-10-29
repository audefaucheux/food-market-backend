class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :food_trucks
end
