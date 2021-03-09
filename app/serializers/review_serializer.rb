class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :boardgame_id

  belongs_to :user
  belongs_to :boardgame
end
