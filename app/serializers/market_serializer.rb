class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name#, :address_1, :address_2, :postcode, :town, :latitude, :longitude
end
