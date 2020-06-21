class Order < ApplicationRecord
    has_many :meals, through: :order_meals
    belongs_to :user
    has_one :situation

end
