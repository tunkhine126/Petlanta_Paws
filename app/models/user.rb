class User < ApplicationRecord
    has_many :comments
    has_many :adoptions
    has_many :pets, through: :adoptions

end
