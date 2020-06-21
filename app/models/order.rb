class Order < ApplicationRecord
    has_many :meals, through: :order_meals
    belongs_to :user
    belongs_to :situation

end
