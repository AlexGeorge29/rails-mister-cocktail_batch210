# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?

puts "Destroy Cocktails"
Cocktail.destroy_all if Rails.env.development?

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

Cocktail.create!({name: "Gin Tonic"})
Cocktail.create!({name: "Biere"})
Cocktail.create!({name: "TGV"})
Cocktail.create!({name: "Sky Coke"})
Cocktail.create!({name: "Jaguer Bomb"})
Cocktail.create!({name: "Vocka Matini"})
Cocktail.create!({name: "Cosmo"})
Cocktail.create!({name: "Sangria"})
Cocktail.create!({name: "Margarita"})
Cocktail.create!({name: "Bloody Marie"})
Cocktail.create!({name: "Red vine"})
Cocktail.create!({name: "White Vine"})
