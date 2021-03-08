class User < ApplicationRecord
    has_many :reviews
    has_many :boardgames, through: :reviews

    validates :name, length: {minimum: 2}

end
