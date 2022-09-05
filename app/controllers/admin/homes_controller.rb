class Admin::HomesController < ApplicationController
  def top
    @orders = Order.all.includes(:order_items)
  end
end
