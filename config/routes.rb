Rails.application.routes.draw do
  Rails.application.routes.draw do

    get "/meals", to: "meals#index"

    get "/meals/:id", to: "meals#show"

    get "/meals", to: "meals#index"

    get "/meals/:id", to: "meals#show"

    post "/meals", to: "meals#create"

    put "/meals/:id", to: "meals#update"

    delete "meals/:id", to: "meals#destroy"


    get "/meal_categories", to: "meal_categories#index"

    get "/meal_categories/:id", to: "meal_categories#show" 
    
    get "/meal_categories", to: "meal_categories#index"

    get "/meal_categories/:id", to: "meal_categories#show"

    post "/meal_categories", to: "meal_categories#create"

    put "/meal_categories/:id", to: "meal_categories#update"

    delete "meal_categories/:id", to: "meal_categories#destroy"


    get "/orders", to:"orders#index"
    get "/orders/:id", to: "orders#show"
    post "/orders", to: "orders#create"
    put "/orders", to: "orders#update"
    delete "/orders", to:"orders#destroy"


    get "/orders_meals", to:"orders_meals#index"
    get "/orders_meals/:id", to: "orders_meals#show"
    post "/orders_meals", to: "orders_meals#create"
    put "/orders_meals", to: "orders_meals#update"
    delete "/orders_meals", to:"orders_meals#destroy"






 
  
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
