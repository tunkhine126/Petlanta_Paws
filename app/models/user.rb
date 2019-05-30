class User < ApplicationRecord
    has_many :likes
    has_many :comments
    has_many :adoptions
    has_many :pets, through: :adoptions
    validates :username, uniqueness: true
    validates :password, presence: true
    has_secure_password
end
