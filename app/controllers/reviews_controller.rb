class ReviewsController < ApplicationController

  # def new
  #   @review = Review.new
  # end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat

    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
