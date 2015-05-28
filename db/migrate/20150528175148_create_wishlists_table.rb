class CreateWishlistsTable < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.integer :item_number
    end
  end
end
