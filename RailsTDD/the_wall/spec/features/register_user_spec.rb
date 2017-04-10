require 'rails_helper'

feature "User signs into account" do
  scenario "signs into account with new username" do
    log_in
    expect(page).to have_content("Username not found. Will register new user now.")
    expect(current_path).to eq(new_user_path)
  end

  scenario "signs into account with existing username" do
    create(:user)
    log_in
    expect(page).to have_content("Welcome #{User.first.username}")
    expect(current_path).to eq(messages_path)
  end
end
