class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :email
  belongs_to :movie
end
