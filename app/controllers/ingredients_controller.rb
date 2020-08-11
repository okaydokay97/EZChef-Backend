class IngredientsController < ApplicationController
  
  def index
    ingredients = Ingredient.all 
    render json: ingredients
  end

  # def filter
  #   @@search_term = params["_json"]
  #   found_ingredients = Ingredient.all.select{ |i| i.name.include?(params["_json"].downcase) || params["_json"].include?(i.name.downcase)}
  #   render json: found_ingredients
  # end

  def filter
    @@search_term = params["_json"]
    found_ingredient = Ingredient.all.select{ |i| i.name.downcase == (params["_json"].downcase)}
    render json: found_ingredient
  end


  def create
    
    potential_ingredient_names = params["_json"].map{ |i| i["name"]}
    acquired_ingredient_names = Ingredient.all.map{ |i| i.name}
    new_ingredient_names = potential_ingredient_names - acquired_ingredient_names
    new_ingredients = new_ingredient_names.map{ |i| params["_json"].select{ |is| is["name"] == i }}.flatten
    i = 0
    while i < new_ingredients.length - 1 do
      Ingredient.create(name: new_ingredients[i]["name"], image: new_ingredients[i]["image"], api_id: new_ingredients[i]["id"], aisle: new_ingredients[i]["aisle"])
      i += 1
    end
    found_ingredients = Ingredient.all.select{ |i| i.name.include?(@@search_term.downcase) || @@search_term.include?(i.name.downcase)}
    render json: found_ingredients
  end

end
