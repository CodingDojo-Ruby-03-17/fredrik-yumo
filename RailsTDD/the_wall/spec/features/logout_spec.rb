require 'rails_helper'

feature "Log out feature" do
  before(:each) do
    create(:user)
    log_in
  end

  scenario "there should be a log out link" do
    expect(page).to have_link("Log Out")
  end

  scenario "user logs out of account" do
    click_link "Log Out"
    expect(page).to have_content("Successfully logged out.")
    expect(current_path).to eq(new_user_path)
  end
end
