class RecipesController < ApplicationController

  def index 
    recipes = Recipe.all 
    render json: recipes
  end

  def create
    found_recipe = Recipe.find_by(name: params[:content][:title])
    if found_recipe
      render json: found_recipe
    else 
      newRecipe = Recipe.create(name: params[:content][:title], content: params[:content])
      render json: newRecipe
    end
  end

end
