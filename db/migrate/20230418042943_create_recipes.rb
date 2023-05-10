class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.integer :cooktime
      t.integer :serving
      t.integer :healthrating
      t.integer :difficulty

      t.timestamps
    end
  end
end
