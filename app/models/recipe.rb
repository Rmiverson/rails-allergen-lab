class Recipe < ApplicationRecord
   has_many :ingredients, through: :ingredient_recipes
   belongs_to :user
end
