class ReviewsController < ApplicationController


  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    # raise
    # @review.save!
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
      # raise
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params[:review].permit(:rating, :content)
  end
end
