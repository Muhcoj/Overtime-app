require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do 
    before do
      user = User.create(first_name: "Joop", last_name: "Snow", email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", phone: "4915735984394")
      @post = FactoryGirl.create(:post)
    end

  	it 'can be created' do
  		expect(@post).to be_valid
  	end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      @post.overtime_request = nil
      expect(@post).to_not be_valid
    end

    it 'has an overtime_request greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end
