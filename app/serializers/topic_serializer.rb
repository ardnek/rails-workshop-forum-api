class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_one :user, except: :topics
  has_many :messages, except: [:topic, :user]
  has_one :forum, except: [:topics, :info]
end
