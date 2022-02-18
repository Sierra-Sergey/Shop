class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @products = Product.where(category_id: @category.id)
    sorting(params[:sort_status])
    set_pagy(@products, 8)
    respond_to do |format|
      if params[:sort_status]
        format.js {render 'products/index'}
      else
        format.html
      end
    end
  end
end
