require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "GET /users" do
    visit users_path
    expect(page).to have_content 'Users'
  end
end
