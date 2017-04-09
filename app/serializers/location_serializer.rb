class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :zip
  has_many :movies
end
