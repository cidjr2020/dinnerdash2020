class OrdersMealsController < ApplicationController
    before_action :set_orders_meals, only: [:show, :update, :destroy]

    def index 
        @q = OrderMeal.ransack(params[:q])

         render json: @q.result(distinct: true)

        
    end
  
    
    def show 
        render json: @orders_meal, status: 200
    end
  
    def create 
        @order_meal = OrderMeal.new(order_meals_params)
        if @order_meal.save
            render json:@order_meal, status: 201
  
        else
            render json:@order_meal.errors, status: :unprocessable_entity
        end    
    end   
  
  
   def update
        if @order.update(order_meals_params)
           render json:@order_meal, status:200
        else 
           render json:@order_meal.errors, status: :unprocessssable_entity
  
        end
    end    
  
    def destroy
      @ordermeal.destroy
    end

    def set_order_meals
  
        @order_meal = Order_meal.find(params[:id])
     
    end
  
    def  order_meals_params
  
        params.permit(:quantity)
  
    end

end
