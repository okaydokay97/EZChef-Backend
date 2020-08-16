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



u1 = User.create(username: 'Rubens', email: 'foobar@test.com', password: 'abc123')
u2 = User.create(username: 'Jim', email: 'testing@turtle.com', password: 'foobar')


