class OrdersController < ApplicationController
 
    def index 
      @orders= Order.all
      render json: @orders, status: 200
    
      

   end

  
 def show 
@orders = Order.find(params[:id])
   render json: @order, status: 200
  end


  




   def create 
   @order = Order.new(order_params)
   if @order.save
       render json:@order, status: 201

  else
       render json:@order.errors, status: :unprocessable_entity

  end   

  end

 def update
     if @order.update(order_params)
         render json:@order, status:200
     else 
         render json:@order.errors, status: :unprocessssable_entity

     end

 end    
 def destroy
    @order.destroy


def order_params

  params.permit(:price)

end
end
end


