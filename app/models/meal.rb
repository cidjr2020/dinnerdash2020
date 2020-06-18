class Meal < ApplicationRecord
    belongs_to :meal_categories

    after_create :add_price
    has_one_attached :image

    def add_price
        meal = Meal.find(self.id)
        meal.price = 20.0
        meal.save
    end  
end
