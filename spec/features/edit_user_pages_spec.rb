require 'rails_helper'

describe "the edit user information process" do
  it "edits user information" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Login"
    click_on "Edit Profile"
    fill_in "Email", with: user.email
    fill_in "Password", with: "passwords"
    fill_in "Password confirmation", with: "passwords"
    fill_in "Current password", with: "password"
    click_on "Update"
    expect(page).to have_content "Your account has been updated successfully."
  end

  it "deletes the user account", js: true do
    user = FactoryGirl.create(:user, password: "password", password_confirmation: "password")
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Edit Profile"
    click_on "Cancel my account"
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Bye! Your account has been successfully cancelled. We hope to see you again soon."
  end
end
