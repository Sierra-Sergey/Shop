class PagesController < ApplicationController

  def search
    @products = Product.where('title ILIKE ?', "%" + params[:query] + "%")
    set_pagy(@products, 8)
  end

end
