class Meal < ApplicationRecord
    belongs_to :meal_category

    has_one :order, through: :order_meal

    after_create :add_price
    has_one_attached :image

    def add_price
        meal = Meal.find(self.id)
        meal.price = 20.0
        meal.save
    end  

    
end
