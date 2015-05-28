class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def one_click
    flash[:notice] = "Item has been ordered!"
    user = User.find(1)
    item = Item.find(params[:id])
    order = user.orders.create(amount: 1)
    order.order_items.create(item_id: item.id)
    redirect_to user_path(user)
  end
end
