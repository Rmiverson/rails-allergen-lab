class CreateIngredientRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredient_recipes do |t|

      t.timestamps
    end
  end
end
