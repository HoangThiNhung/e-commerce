class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :left_node
      t.integer :right_node
      t.integer :depth

      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
