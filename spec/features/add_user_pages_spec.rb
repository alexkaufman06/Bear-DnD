require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit root_path
    click_on "Sign Up"
    fill_in "Email", with: "user@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button("Sign Up")
    expect(page).to have_content "Welcome! You have signed up successfully."
  end


  it "errors" do
    visit root_path
    click_on "Sign Up"
    click_button("Sign Up")
    expect(page).to have_content "Email can't be blank"
  end


end
