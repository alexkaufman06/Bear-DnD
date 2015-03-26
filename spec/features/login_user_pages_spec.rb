require 'rails_helper'

describe "the login user process" do
  it "logs the user in" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    expect(page).to have_content "Signed in successfully"
  end

  it "will return errors if user doesn't exist" do
    visit root_path
    click_on "Login"
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: Faker::Internet.password(8)
    click_button "Login"
    expect(page).to have_content "Invalid email or password"
  end
end
