class Ingredient < ApplicationRecord
  has_many :pantry_ingredients
  has_many :users, through: :pantry_ingredients
end
