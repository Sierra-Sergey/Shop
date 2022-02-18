class ProductsController < ApplicationController

  def index
    @products = Product.all
    sorting(params[:sort_status])
    set_pagy(@products, 8)
    respond_to do |format|
      if params[:sort_status]
        format.js
      else
        format.html
      end
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
