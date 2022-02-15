class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
    sorting(params[:sort_status])
    set_pagy(@products, 8)
  end
end
