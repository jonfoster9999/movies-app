class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url
  belongs_to :category
  has_many :comments
  has_many :actors
end
