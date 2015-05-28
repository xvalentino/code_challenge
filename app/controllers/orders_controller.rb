class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def one_click
    flash[:notice] = "Item has been ordered!"
    redirect_to user_path(1)
  end
end
