class BoardgameSerializer < ActiveModel::Serializer
    attributes :id, :name, :image_url, :theme, :duration, :num_of_players, :age_requirements, :description

    has_many :reviews
    has_many :users, through: :reviews
end
