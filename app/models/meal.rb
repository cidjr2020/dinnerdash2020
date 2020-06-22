class Meal < ApplicationRecord
    include Rails.application.routes.url_helpers
    belongs_to :meal_category

    validates :name, presence: true
    validates :price, numericality: true
    

    has_one :order, through: :order_meal

    after_create :add_price
    has_one_attached :image

    def add_price
        meal = Meal.find(self.id)
        meal.price = 20.0
        meal.save
    end  


    def attachment_url
       
        rails_blob_url(self.image, only_path: true) if self.image.attached?
            
      end

end
