require 'rails_helper'

RSpec.describe Image, type: :model do
  it 'shuold belongs to user' do
    user = User.new
    image = Image.new
    user.images << image
    expect(image).to respond_to :user
    expect(image.user).to be user
  end
end
