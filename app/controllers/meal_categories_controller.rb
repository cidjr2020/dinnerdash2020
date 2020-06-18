class MealCategoriesController < ApplicationController
    before_action :set_meal_categories, only: [:show, :update, :destroy]

    def index

        @meal_categories = Meal.all

        render json: @meal_categories

    end

    def show

        @meal_category = Meal.find(params[:id])

        render json: @meal_category

    end

    def create

        @meal_category = Meal.new(meal_params)
    
        if @meal_category.save
    
          render json:@meal_category, status: 201
    
        else
    
          render json:@meal_category.errors, status: :unprocessable_entity
    
        end   
    
    end

    def update

        if @meal_category.update(anime_params)
    
          render json: @meal_category, status: 200
    
        else
    
          render json: @meal_category.errors, status: :unprocessable_entity
    
        end
    
    end

    def destroy

        @meal_category.destroy
    
    end

    def set_meal

        @meal_category = Meal.find(params[:id])
    
    end

    def meal_params

        params.require(@meal_category).permit( :description)
    
    end
end
