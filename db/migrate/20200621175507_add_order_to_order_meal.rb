class AddOrderToOrderMeal < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_meals, :order, null: false, foreign_key: true
  end
end
