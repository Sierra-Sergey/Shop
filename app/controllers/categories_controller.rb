class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
    price_filter(params[:min_price].to_i, params[:max_price].to_i)
    sorting(params[:sort_status])
    set_pagy(@products, 8)
  end
end
