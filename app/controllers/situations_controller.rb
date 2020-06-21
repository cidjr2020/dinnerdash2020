class SituationsController < ApplicationController
    before_action :set_situation, only: [:show, :update, :destroy]
  
    def index

      @q = Situation.ransack(params[:q])

         render json: @q.result(distinct: true)
    end

   def show

     render json: @situation

   end

   def create

       @situation = Situation.new(situation_params)
    
       if @situation.save
    
         render json:@situation, status: 201
    
       else
    
         render json:@situation.errors, status: :unprocessable_entity
    
       end   
    
   end

    def update

    if @situation.update(situation_params)
    
     render json: @situation, status: 200
    
    else
    
     render json: @situation.errors, status: :unprocessable_entity
    
     end
    
    end

    def destroy

      @situation.destroy
    
    end


  def set_situation

       @situation = Situation.find(params[:id])
    
    end

  def situation_params

  params.permit( :description)
    
  end 


end
