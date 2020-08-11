class PantryIngredientsController < ApplicationController

  def index 
    pantry_ingredients = PantryIngredient.all 
    render json: pantry_ingredients
  end

  def create 
    if !(PantryIngredient.where(ingredient_id: params['id'], user_id: params["currentUser"]["id"]).length == 0)
      render json:  {error: 'You Already Have That Item' }
    else
      added_ingredient = PantryIngredient.create(ingredient_id: params["id"], user_id: params["currentUser"]["id"])
      render json: added_ingredient.ingredient
    end
  end

  def filter
    user = User.find(params["_json"])
    render json: user.ingredients
  end

end
