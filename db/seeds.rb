# frozen_string_literal: true

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = open(url).read
ingredients = JSON.parse(data)
drinks = ingredients['drinks']

puts 'adding ingredients'

drinks.each do |drink|
  ingredient = Ingredient.new(name: drink['strIngredient1'])
  ingredient.save
end

puts 'finished!'
