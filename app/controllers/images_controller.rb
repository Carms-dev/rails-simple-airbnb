class ImagesController < ApplicationController

  # def new
  #   @image = Image.new
  # end

  def create
    @flat = Flat.find(params[:flat_id])
    @image = Image.new(image_params)
    @image.flat = @flat

    if @image.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end
end
