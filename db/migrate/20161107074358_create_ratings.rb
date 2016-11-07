class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :user
      t.references :product
      t.float :rate
      t.string :content

      t.timestamps
    end
    add_index :ratings, [:product_id, :user_id], unique: true
  end
end
