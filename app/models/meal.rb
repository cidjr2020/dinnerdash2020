class Meal < ApplicationRecord
    belongs_to :meal_category

    after_create :add_price
    has_one_attached :image

    def add_price
        meal = Meal.find(self.id)
        meal.price = 20.0
        meal.save
    end  

    def index

        @q = Post.ransack(params[:q])
      
        render json: @q.result(distinct: true)
      
     
    end
end
