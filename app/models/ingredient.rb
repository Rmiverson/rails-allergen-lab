class Ingredient < ApplicationRecord
   has_many :recipes, through: :ingredient_recipes
   has_many :users, through: :allergies
end
