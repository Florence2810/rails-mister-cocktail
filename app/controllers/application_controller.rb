class ApplicationController < ActionController::Base
end


# require "json" require "rest-client" Ingredient.destroy_all response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list" repos = JSON.parse(response) puts repos repos["drinks"].each do |drink| puts drink ingredient = Ingredient.new( name: drink["strIngredient1"] ) ingredient.save! end