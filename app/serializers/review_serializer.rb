class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :boardgame_id, :user

    belongs_to :user
    belongs_to :boardgame
end
