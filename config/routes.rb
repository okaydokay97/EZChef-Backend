Rails.application.routes.draw do
  resources :ingredients
  resources :recipe_ingredients
  resources :pantry_ingredients
  resources :favorite_recipes
  resources :recipes
  resources :users
  post '/ingredients_filter', to: 'ingredients#filter'
  post '/pantry_ingredients_filter', to: 'pantry_ingredients#filter'
  post '/auth', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
