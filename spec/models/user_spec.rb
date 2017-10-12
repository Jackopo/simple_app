require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) {
    double("User", name: "Tom", email: "tom@example.org", password: '12345')
  }

  it "should include the :name, :email and :password attribute" do
    expect(subject.attributes).to include("name")
    expect(subject.attributes).to include("email")
    expect(subject.attributes).to include("password_digest")
  end

  it "has a name and an email" do
    expect(user).to have_attributes(name: 'Tom', email: 'tom@example.org', password: '12345')
  end
end
