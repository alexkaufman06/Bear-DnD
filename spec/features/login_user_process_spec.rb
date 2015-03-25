require 'rails_helper'

describe "the login user process" do
  it "logs the user in" do
    @user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: "Joe@aol.com"
    fill_in "Password", with: "password"
    click_on "Log in"
    expect(page).to have_content "Signed in successfully"
  end

    it "will return errors if user doesn't exist" do
      visit root_path
      click_on "Login"
      fill_in "Email", with: "your@face.com"
      fill_in "Password", with: "anything"
      click_on "Log in"
      expect(page).to have_content "Invalid email or password"
    end
end
