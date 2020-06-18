class MealController < ApplicationController

    before_action :set_meal, only: [:show, :update, :destroy]

    def index

        @meals = Meal.all

        render json: @meals

    end

    def show

        @meal = Meal.find(params[:id])

        render json: @meal

    end

    def create

        @meal = Meal.new(meal_params)
    
        if @meal.save
    
          render json:@meal, status: 201
    
        else
    
          render json:@meal.errors, status: :unprocessable_entity
    
        end   
    
    end

    def update

        if @meal.update(anime_params)
    
          render json: @meal, status: 200
    
        else
    
          render json: @meal.errors, status: :unprocessable_entity
    
        end
    
    end

    def destroy

        @meal.destroy
    
    end

    def set_meal

        @meal = Meal.find(params[:id])
    
    end

    def meal_params

        params.require(:meal).permit(:name, :description)
    
    end

end
