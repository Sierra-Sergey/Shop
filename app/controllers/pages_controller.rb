class PagesController < ApplicationController

  def search
    @products = Product.where('title ILIKE ?', "%#{params[:query]}%")
    set_pagy(@products, 8)
  end

  def search_titles
    @titles = Product.search(params[:term])
    render json: @titles.map(&:title).uniq
  end

end
