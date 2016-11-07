class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :uuid
      t.string :name
      t.float :price
      t.text :description
      t.text :promotion
      t.integer :quanlity
      t.references :category

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :price
    add_index :products, :uuid, unique: true
  end
end
