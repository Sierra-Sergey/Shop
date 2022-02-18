class PagesController < ApplicationController

  def search
    @products = Product.search(params[:query])
    @query = params[:query]
    price_filter(params[:min_price].to_i, params[:max_price].to_i)
    sorting(params[:sort_status])
    set_pagy(@products, 8)
  end

  def search_titles
    @titles = Product.search(params[:term])
    render json: @titles.map(&:title).uniq
  end

end
