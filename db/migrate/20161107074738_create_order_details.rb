class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.references :order
      t.references :product
      t.string :name
      t.float :price
      t.integer :quatity
      t.string :color
      t.string :size

      t.timestamps
    end

  end
end
