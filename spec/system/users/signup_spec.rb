require "rails_helper"

RSpec.describe "adding a user", type: :system do
  it "allows to create a user account" do
    visit signup_path
    fill_in "Email", with: "simple@example.com"
    fill_in "Password", with: "commitment"
    fill_in "Password confirmation", with: "commitment"
    click_on "Create User"
    expect(page).to have_content("User was created")
  end
end
