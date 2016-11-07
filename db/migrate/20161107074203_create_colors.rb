class CreateColors < ActiveRecord::Migration[5.0]
  def change
    create_table :colors do |t|
      t.references :product
      t.string :color

      t.timestamps
    end
    add_index :colors, [:product_id, :color], unique: true
  end
end
