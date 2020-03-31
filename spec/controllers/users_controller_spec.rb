require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) do
    {
      user_name: "jimjim698",
       password: "cool"
    }
  end
  let(:invalid_attributes) do
     {
       user_name: nil,
        password: nil
     }
   end

  describe "basic creating, viewing and editing" do
    let(:user) {User.create(valid_attributes)}

    it "views a single user" do
      get "show", params:{id: user.id}
      expect(assigns(:user)).to eq(user)
    end
  end

  context "creating a valid user" do
    before {post :create, params: {user: valid_attributes}}

    it "creates a new User" do
      expect(User.count).to eq(1)
    end

  end


end
