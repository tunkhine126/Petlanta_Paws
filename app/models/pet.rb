class Pet < ApplicationRecord
    has_many :comments
    has_one :adoption
    has_one :user, through: :adoption
end
