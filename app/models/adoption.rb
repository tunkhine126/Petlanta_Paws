class Adoption < ApplicationRecord
    belongs_to :user
    belong_to :pet
end
