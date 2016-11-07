class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user
      t.datetime :order_date
      t.datetime :ship_date
      t.integer :payment
      t.float :price

      t.timestamps
    end
    add_index :orders, :order_date
  end
end
