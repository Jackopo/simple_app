require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do

    let(:user) {
      double("User", {
        name: 'Tom',
        email: 'tom@example.org',
        password: '12345'}
      )
    }

    subject {
      post :create,
      {
        name: 'Tom',
        email: 'tom@example.org',
        password: '12345',
        password_confirmation: '12345'
      }
    }

    it "redirect to root when user is found" do
      allow(User).to receive(:find_by_email).and_return( user )
      allow(user).to receive(:authenticate).with("12345").and_return( true )
      allow(user).to receive(:id)
      expect(subject).to redirect_to "/"
    end

    it "redirect to /login when user is found" do
      allow(User).to receive(:find_by_email).and_return( nil )
      expect(subject).to redirect_to "/login"
    end

    it "redirect to /login when user logs out" do
      get :destroy
      expect(response).to redirect_to "/login"
      expect(session[:user_id]).to be_nil
    end
  end

end
