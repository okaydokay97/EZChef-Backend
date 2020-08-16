Rails.application.routes.draw do
  resources :recipes
  resources :favorite_recipes
  resources :ingredients
  resources :pantry_ingredients
  resources :users
  post '/ingredients_filter', to: 'ingredients#filter'
  post '/pantry_ingredients_filter', to: 'pantry_ingredients#filter'
  post '/auth', to: 'auth#create'
  post '/favorite_recipes_filter', to: 'favorite_recipes#filter'
  post '/favorite_recipes_login_filter', to: 'favorite_recipes#login_filter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
