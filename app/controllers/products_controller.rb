class ProductsController < ApplicationController

  def index
    @products = Product.all
    price_filter(params[:min_price].to_i, params[:max_price].to_i)
    sorting(params[:sort_status])
    set_pagy(@products, 8)
  end

  def show
    @product = Product.find(params[:id])
  end





end
