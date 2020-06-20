Rails.application.routes.draw do

    get "/situations", to: "situations#index"

    get "/situations/:id", to: "situations#show"

    post "/situations", to: "situations#create"

    put "/situations/:id", to: "situations#update"

    delete "/situations/:id", to: "situations#destroy"


    get "/meals", to: "meals#index"

    get "/meals/:id", to: "meals#show"

    post "/meals", to: "meals#create"

    put "/meals/:id", to: "meals#update"

    delete "/meals/:id", to: "meals#destroy"

    
    get "/meal_categories", to: "meal_categories#index"

    get "/meal_categories/:id", to: "meal_categories#show"

    post "/meal_categories", to: "meal_categories#create"

    put "/meal_categories/:id", to: "meal_categories#update"

    delete "/meal_categories/:id", to: "meal_categories#destroy"


    get "/orders", to:"orders#index"
    get "/orders/:id", to: "orders#show"
    post "/orders", to: "orders#create"
    put "/orders/:id", to: "orders#update"
    delete "/orders/:id", to:"orders#destroy"


    get "/orders_meals", to:"orders_meals#index"
    get "/orders_meals/:id", to: "orders_meals#show"
    post "/orders_meals", to: "orders_meals#create"
    put "/orders_meals/:id", to: "orders_meals#update"
    delete "/orders_meals/:id", to:"orders_meals#destroy"

end
