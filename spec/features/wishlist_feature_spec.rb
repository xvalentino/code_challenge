require "rails_helper"

RSpec.describe "Wishlist", type: :feature do
  it "has a link in the navbar" do
    visit root_url
    expect(page).to have_content("Wishlist")
  end
end
