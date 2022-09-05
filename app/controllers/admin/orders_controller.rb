class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @orders = Order.new
    @order_item = Order.all.includes(:order_item)
  end

  def update
  end
  
private

  def order_params
    params.require(:order).permit(:payment_method, :payment_status)
  
  end

end
