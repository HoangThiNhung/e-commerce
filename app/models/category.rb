class Category < ApplicationRecord
  has_many :products

  validate :name, :left_node, :right_node, :depth, presence: true

  def set_params parent_id
    set_category self, parent_id
  end

  private
  def set_category category, parent_id
    if parent_id == ""
      max_right = Category.maximum("right_node")
      if max_right.nil?
        category.left_node = 1
        category.right_node = 2
      else
        category.left_node = max_right + 1
        category.right_node = max_right + 2
      end
      category.depth = 1
    else
      parent = Category.find_by id: parent_id
      if parent.present?
        Category.where("right_node >= #{parent.right_node}").update_all("right_node = right_node + 2")
        Category.where("left_node >= #{parent.right_node}").update_all("left_node = left_node + 2")
        category.left_node = parent.right_node
        category.right_node = parent.right_node + 1
        category.depth = parent.depth + 1
      end
    end
  end
end
