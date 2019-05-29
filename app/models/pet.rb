class Pet < ApplicationRecord
    has_many :likes
    has_many :comments
    has_one :adoption
    has_one :user, through: :adoption
    validates :name, presence: true 
    validates :category, presence: true 
    validates :gender, presence: true

    def self.category_arr(value)
        Pet.all.select { |p| p.category ==  value }
    end
end
