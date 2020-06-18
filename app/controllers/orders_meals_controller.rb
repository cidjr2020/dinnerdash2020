class OrdersMealsController < ApplicationController
    def index 
        @orders_meals= OrderMeal.all
        render json: @orders_meals, status: 200
      
        
  
     end
  
    
   def show 
  @orders_meals = OrderMeal.find(params[:id])
     render json: @orders_meals, status: 200
    end
  
  
    
  
  
  
  
     def create 
     @order_meal = OrderMeal.new(order_params)
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
  
  
  def  order_meals_params
  
    params.permit(:quantity)
  
  end

end
