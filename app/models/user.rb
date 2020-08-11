class User < ApplicationRecord
  has_secure_password
  has_many :favorite_recipes
  has_many :recipes, through: :favorite_recipes
  has_many :pantry_ingredients
  has_many :ingredients, through: :pantry_ingredients
end

