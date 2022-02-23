class OrderItemsController < ApplicationController
  before_action :set_order_item, only: %i[update destroy]
  before_action :set_order_items, only: %i[update destroy]

  def create
    if current_order.order_items.where(product_id: params[:product_id]).present?
      current_order.order_items.find_by(product_id: params[:product_id]).increment!(:quantity)
    else
      current_order.order_items.create(product_id: params[:product_id], quantity: 1)
    end
    redirect_to current_order
  end

  def update
    case params[:change_quantity]
    when 'increase'
      @order_item.increment!(:quantity)
    when 'decrease'
      @order_item.decrement!(:quantity) if @order_item.quantity > 1
    end
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @order_item.destroy
    @items = current_order.order_items.order(:id)
    respond_to do |format|
      format.js
    end
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
