require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe '#new' do
    it "should respond with success" do
      get :new

      expect(response).to be_success
    end
  end

  describe '#create' do
    subject {
      post :create,
      user: {
        name: 'Tom',
        email: 'tom@example.org',
        password: '12345',
        password_confirmation: '12345'
      }
    }

    it "should respond with redirect to #index" do
      expect(subject).to redirect_to action: :index
    end

    it "should respond with a redirect to #new if password wrongly submitted" do
      post :create,
      user: {
        name: 'Tom',
        email: 'tom@example.org',
        password: '12345',
        password_confirmation: '1234'
      }
      expect(response).to redirect_to action: :new
    end
  end
end
