class OrdersController < ApplicationController
    before_action :set_orders, only: [:show, :update, :destroy]

    def index 
        @q = Order.ransack(params[:q])

        render json: @q.result(distinct: true)
    
      

    end

  
    def show 
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
    end

    def set_order
  
        @order = Order.find(params[:id])
     
    end

    def order_params

    params.permit(:price)

    end

end


