class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.references :product
      t.string :size

      t.timestamps
    end
    add_index :sizes, [:product_id, :size], unique: true
  end
end
