class Pet < ApplicationRecord
    has_many :comments
    has_one :adoption
    has_one :user, through: :adoption

    def self.category_arr(value)
        Pet.all.select { |p| p.category ==  value }
    end
end
