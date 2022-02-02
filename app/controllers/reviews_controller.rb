class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_param)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end

  end

  def review_param
    params.require(:review).permit(:content, :rating)
  end
end
