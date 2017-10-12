require 'rails_helper'

describe "routing" do

  it "should routes /signup to users#new" do
    expect(get: "/signup").to route_to(
      controller: "users",
      action: 'new'
    )
  end

  it "should routes post /users to users#create" do
    expect(post: "/users").to route_to(
      controller: "users",
      action: "create"
    )
  end

  it "should routes get /login to sessions#new" do
    expect(get "/login").to route_to(
      controller: "sessions",
      action: "new"
    )
  end

  it "should routes post /login to sessions#create" do
    expect(post "/login").to route_to(
      controller: "sessions",
      action: "create"
    )
  end
end
