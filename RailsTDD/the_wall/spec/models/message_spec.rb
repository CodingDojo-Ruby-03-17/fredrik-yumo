require 'rails_helper'

RSpec.describe Message, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:message)).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if content field is blank" do
      expect(build(:message, content:"")).to be_invalid
    end
    it "should not save if content is less than 10 characters" do
      expect(build(:message, content:"Fail")).to be_invalid
    end
    it "should not save if a user is not referenced" do
      expect(build(:message, user:nil)).to be_invalid
    end
  end
end
