class AddIngredientToAllergy < ActiveRecord::Migration[6.1]
  def change
    add_reference :allergies, :ingredient, null: false, foreign_key: true
  end
end
