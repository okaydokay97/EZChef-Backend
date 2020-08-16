class FavoriteRecipesController < ApplicationController

  def index
    favorite_recipes = FavoriteRecipe.all 
    render json: favorite_recipes
  end

  def create
    added_favorite_recipe = FavoriteRecipe.create(user_id: params["userId"], recipe_id: params["recipeId"])
    render json: added_favorite_recipe
  end

  def filter
    found_recipe_id = Recipe.find_by(name: params["recipeName"]).id
    @@found_favorite_recipe = FavoriteRecipe.find_by(user_id: params["userId"], recipe_id: found_recipe_id)
    render json: @@found_favorite_recipe
  end

  def login_filter
    found_user = User.find(params["userId"])
    render json: found_user.recipes
  end

  def destroy
    @@found_favorite_recipe.delete
  end

end
