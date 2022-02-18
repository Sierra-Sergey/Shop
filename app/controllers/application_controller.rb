class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :set_categories

  def set_pagy(obj, items)
    @pagy, @records = pagy(obj, items: items)
  end

  private

  def set_categories
    @categories = Category.all
  end

  def sorting(sort_status)
    case sort_status
    when 'price_asc'
        @products = @products.order(price: :asc)
    when 'price_desc'
        @products = @products.order(price: :desc)
    when 'title_asc'
        @products = @products.order(title: :asc)
    when 'title_desc'
        @products = @products.order(title: :desc)
    end
  end

  def price_filter(min_price, max_price)
    @min_price = min_price
    @max_price = max_price
    max_price = Product.maximum('price') if max_price <= 0
    @products = @products.price_range(min_price, max_price)
  end

end
