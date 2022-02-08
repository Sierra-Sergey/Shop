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
end
