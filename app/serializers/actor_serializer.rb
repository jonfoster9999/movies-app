class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :image_url
end
