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
      if @category
        @products = Product.where(category_id: @category.id).order(price: :asc)
      else
        @products = Product.all.order(price: :asc)
      end
    when 'price_desc'
      if @category
        @products = Product.where(category_id: @category.id).order(price: :desc)
      else
        @products = Product.all.order(price: :desc)
      end
    when 'title_asc'
      if @category
        @products = Product.where(category_id: @category.id).order(title: :asc)
      else
        @products = Product.all.order(title: :asc)
      end
    when 'title_desc'
      if @category
        @products = Product.where(category_id: @category.id).order(title: :desc)
      else
        @products = Product.all.order(title: :desc)
      end
    end
  end

end
