class MealCategory < ApplicationRecord
    has_many :meals
    validates :description, presence: true
end
