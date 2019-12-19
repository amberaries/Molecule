require "rails_helper"

RSpec.describe "login with user", type: :system do
  context "valid credentials" do
    let!(:user) { create :user }

    it "successfully logged in" do
      visit login_path
      fill_in "Email", with: "simple@example.com"
      fill_in "Password", with: "commitment"
      click_on "Login"
      expect(page).to have_content("Logged in!")
    end
  end

  context "invalid credentials" do
    let!(:user) { create :user, password: "wrong_password" }

    it "successfully logged in" do
      visit login_path
      fill_in "Email", with: "simple@example.com"
      fill_in "Password", with: "commitment"
      click_on "Login"
      expect(page).to have_content("Email or password is invalid")
    end
  end
end
