class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :favorites, [:product_id, :user_id], unique: true
  end
end
