require 'rails_helper'

describe "the add a listing process" do
  it "adds a new listing" do
    visit root_path
    user = FactoryGirl.create(:user)
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Add Listing"
    fill_in "Location", with: "Portland"
    fill_in "Price", with: "100"
    fill_in "Property type", with: "apartment"
    click_button "Create Listing"
    expect(page).to have_content "Listing Successfully Added!"
  end
end
