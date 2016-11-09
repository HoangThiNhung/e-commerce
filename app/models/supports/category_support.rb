class Supports::CategorySupport
  attr_reader :category
  def initialize category = nil
    @category = category
    @tree_menu = ""
  end

  def tree categories, left = 0, right = nil, depth = 0
    @tree_menu += "<ul>" if left == 0 && right == nil && depth == 0
    categories.each do |category|
      if category.left_node > left && (right.nil? || category.right_node < right ) && category.depth == depth + 1
        categories_temp = categories.compact
        categories_temp.delete category

        @tree_menu += "<li>";
        @tree_menu += category.name

        if category.right_node != (category.left_node + 1)
          @tree_menu += "<ul>"
          tree categories_temp, category.left_node, category.right_node, category.depth
          @tree_menu += "</ul>"
        end
        @tree_menu += "</li>"
      end
    end
    @tree_menu += "</ul>" if left == 0 && right.nil? && depth == 0
    return @tree_menu
  end
end
