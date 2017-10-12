class ImageController < ApplicationController

  before_filter :authenticate

  def new
  end

  def create
    @image = Image.new(image_params)
    unless @image.save
      render text: "something went wrong", status: 500
    end
  end

  def image_params
    ops = params.require(:image).permit(:title, :blob).symbolize_keys
    ops.merge({user_id: current_user.id})
  end

end
