class OrdersController < ApplicationController
  def show
    @items = current_order.order_items.order(:id)
  end
end
