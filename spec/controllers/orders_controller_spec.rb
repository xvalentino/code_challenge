require "rails_helper"

RSpec.describe OrdersController do
  describe "POST item checkout" do
    it "adds order for first user" do
      user = User.create!(name: "Test User",
                          email: "testemail@gmail.com")
      item = Item.create!(name: "Test Item",
                          description: "testing rulez",
                          image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size=200x200"
                         )
      expect(user.orders.count).to eq(0)

      post :one_click, id: item.id
      expect(user.orders.count).to eq(1)
    end
  end
end
