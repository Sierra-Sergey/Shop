class ProductsController < ApplicationController
  def index
    @products = Product.all
    sorting(params[:sort_status])
    set_pagy(@products, 8)
  end

  def qwe
    respond_to do |format|
      format.js
    end
  end
end
