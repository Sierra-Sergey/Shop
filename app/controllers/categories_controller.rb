class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
    set_pagy(@products, 8)
  end
end
