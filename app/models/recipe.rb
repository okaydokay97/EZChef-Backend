class Recipe < ApplicationRecord
  has_many :favoite_recipes
  has_many :users, through: :favoite_recipes
end
