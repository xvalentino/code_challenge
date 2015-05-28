class ItemsController < ApplicationController
  respond_to :html, :json
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id].to_i)
  end

  def wishlist
    @items = Wishlist.all.map {|item| Item.find(item.item_number)}
  end

  def add_to_wishlist
    Wishlist.create(item_number: params[:id])
    respond_to do |format|
      format.json { render :json => @post }
    end
  end
end
