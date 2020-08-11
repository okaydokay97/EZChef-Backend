class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :image
      t.integer :api_id
      t.string :aisle

      t.timestamps
    end
  end
end
