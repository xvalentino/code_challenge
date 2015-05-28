require "rails_helper"

RSpec.feature "One Click Checkout", :type => :feature do
  describe "User clicks one click checkout button" do
    it "adds that item to an order for that user" do
      item = Item.create!(name: "Test Item",
                          description: "testing rulez",
                          image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size=200x200"
                         )

      user = User.create!(name: "Test User",
                          email: "testemail@gmail.com")
      visit "/items/1"
      click_button "One Click Checkout"
      expect(page).to have_text("Item has been ordered!")
    end
  end
end
