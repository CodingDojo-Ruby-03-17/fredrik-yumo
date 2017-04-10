require 'rails_helper'

feature "User creates a message" do
  before(:each) do
    create(:user)
    log_in
  end

  scenario "successfully creates a message" do
    fill_in "content", with: "This is my message."
    click_button "Post a Message"
    expect(page).to have_content("This is my message.")
    expect(current_path).to eq(messages_path)
  end

  scenario "unsuccessfully creates a blank message" do
    fill_in "content", with: ""
    click_button "Post a Message"
    expect(page).to have_content("Content can't be blank")
    expect(current_path).to eq(messages_path)
  end

  scenario "unsuccessfully creates a message that is less than 10 characters" do
    fill_in "content", with: "Fail"
    click_button "Post a Message"
    expect(page).to have_content("Content is too short")
    expect(current_path).to eq(messages_path)
  end
end
