require 'rails_helper'

RSpec.describe User, type: :model do
  let(:attributes) do {
    user_name: "jimjim698",
    password: "cool"
  }
  end

  let(:missing_user_name) {attributes.except(:user_name)}
  let(:missing_password) {attributes.except(:password)}

  it "is valid when expected" do
    expect(User.new(attributes)).to be_valid
  end
  it "is invalid without user_name" do
    expect(User.new(missing_user_name)).to be_invalid
  end
  it "is invalid without password" do
    expect(User.new(missing_password)).to be_invalid
  end 
end
