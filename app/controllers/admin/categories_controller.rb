class Admin::CategoriesController < Admin::BaseController
  include NestedSetModel
  load_and_authorize_resource

  def index
    @menu = Supports::CategorySupport.new().tree @categories
  end

  def new
    @categories = Category.all
  end

  def create
    @category = Category.new category_params
    @category.set_params params[:parent_id]

    if @category.save
      redirect_to admin_categories_path
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
