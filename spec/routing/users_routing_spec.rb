require 'rails_helper'

describe "routing to users" do

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
end
