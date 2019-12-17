require 'rails_helper'

RSpec.feature "Users", type: :feature do
  let(:user) { create :user }

  scenario "GET /users" do
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Save'

    visit users_path

    expect(page).to have_content 'Users'
  end
end
