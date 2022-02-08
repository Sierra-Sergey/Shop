class PagesController < ApplicationController

  def home
    @products = Product.all
    set_pagy(@products, 8)
  end

  def search
    @products = Product.where('title ILIKE ?', "%" + params[:query] + "%")
    set_pagy(@products, 8)
  end

end
