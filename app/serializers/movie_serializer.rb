class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :box_office
  belongs_to :category
  has_many :comments
  has_many :actors
  has_many :locations
end
