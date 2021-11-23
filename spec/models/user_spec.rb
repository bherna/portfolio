require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation tests" do

    it "ensures that our user is not created when only giving a email" do
      newUser = User.create(email: 'abc@gmail.com')
      expect(newUser.valid?).to eq(false)
    end

    it "ensures that our user is not created when only giving a password" do
      newUser = User.create(password: "123456")
      expect(newUser.valid?).to eq(false)
    end

    it "ensures that new user is created when giving both email and password" do
      newUser = User.create(email: 'abc@gmail.com', password: "123456")
      expect(newUser.valid?).to eq(true)
    end


  end
end
