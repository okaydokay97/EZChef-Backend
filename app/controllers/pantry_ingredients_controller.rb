class PantryIngredientsController < ApplicationController

  def index 
    pantry_ingredients = PantryIngredient.all 
    render json: pantry_ingredients
  end

  def create 
    found = PantryIngredient.where(ingredient_id: params['id'], user_id: params["currentUser"]["id"])
    if (found.length != 0)
      render json:  {error: 'You Already Have That Item', ingredient_object: found[0].ingredient, ingredient_id: found[0].ingredient.id, pantry_id: found[0].id, user_id: found[0].user.id  }
    else
      added_ingredient = PantryIngredient.create(ingredient_id: params["id"], user_id: params["currentUser"]["id"])
      render json: added_ingredient.ingredient
    end
  end

  def filter
    user = User.find(params["_json"])
    render json: user.ingredients
  end

  def destroy
    foundPantryIngredient = PantryIngredient.find_by(ingredient_id: params[:ingredientId], user_id: params[:userId])
    foundPantryIngredient.delete
  end

end
