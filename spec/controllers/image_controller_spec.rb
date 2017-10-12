require 'rails_helper'

RSpec.describe ImageController, type: :controller do

  let(:user) { double("User") }

  before do
    allow(subject).to receive(:current_user).and_return(user)
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      allow(user).to receive(:id).and_return(1)
      post :create, { image: {title: "title"}}
      expect(response).to have_http_status(:success)
    end
  end
end
