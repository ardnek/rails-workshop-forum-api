class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text

  has_one :user, except: [:topics, :messages, :forums]
  has_one :topic, except: :user

end
