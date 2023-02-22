class ReviewsController < ApplicationController
  def show
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    review.save
    redirect_to reviews_path
  end
end
