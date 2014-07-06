class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :name, null: false
      t.text :image, :url
      t.integer :rating, :servings, :prep_time
      t.boolean :is_custom, :is_active, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
