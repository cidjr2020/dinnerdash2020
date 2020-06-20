# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  MealCategory.create(name:"gostoso")
  meals = Meal.create([{ name: 'Farofa', description:"Gostoso", available: true, price: 10, meal_category_id: 1  }, 
  {name: 'Farofa com ovo', description:"Mais gostoso que a farofa normal", available: true, price: 15, meal_category_id: 1 }  ]) 

