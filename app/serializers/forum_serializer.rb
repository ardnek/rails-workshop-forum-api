class ForumSerializer < ActiveModel::Serializer
  attributes :id, :name, :info

  has_many :topics
end
