# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all
PantryIngredient.destroy_all
FavoriteRecipe.destroy_all
RecipeIngredient.destroy_all


r1 = Recipe.create(name: 'pizza')
r2 = Recipe.create(name: 'carrot cake')
r3 = Recipe.create(name: 'pancake')

u1 = User.create(username: 'Rubens', email: 'foobar@test.com', password: 'abc123')
u2 = User.create(username: 'Jim', email: 'testing@turtle.com', password: 'foobar')


fr1 = FavoriteRecipe.create(recipe: r1, user: u1)
fr2 = FavoriteRecipe.create(recipe: r1, user: u2)
fr3 = FavoriteRecipe.create(recipe: r3, user: u1)

