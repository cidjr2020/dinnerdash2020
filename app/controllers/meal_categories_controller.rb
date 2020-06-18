class MealCategoriesController < ApplicationController
  before_action :set_meal_categories, only: [:show, :update, :destroy]

  def index

    @meal_categories = MealCategory.all

    render json:@meal_categories, status:200

  end

  def show

    render json: @meal_category

  end

  def create

    @meal_category = MealCategory.new(meal_categories_params)
  
      if @meal_category.save
  
        render json:@meal_category, status: 201
  
      else
  
        render json:@meal_category.errors, status: :unprocessable_entity
  
      end   
  
  end

  def update

    if @meal_category.update(meal_categories_params)
  
      render json: @meal_category, status: 200
  
    else
  
      render json: @meal_category.errors, status: :unprocessable_entity
  
    end
  
  end

  def destroy

    @meal_category.destroy
  
  end

private

  def set_meal_categories

    @meal_category = MealCategory.find(params[:id])
  
  end

  def meal_categories_params

    params.permit(:name)
  
  end
end
