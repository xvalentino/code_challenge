require "rails_helper"

RSpec.describe "Wishlist", type: :feature do
  describe "page" do
    it "is in navbar" do
      visit root_url
      expect(page).to have_content("Wishlist")
    end

    it "has a show" do
      visit '/wishlist' 
      expect(page).to have_content("Items that you wish you had")
    end
  end
end
