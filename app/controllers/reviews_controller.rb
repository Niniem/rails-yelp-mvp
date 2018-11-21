class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edith, :update, :destroy]
  def index
    @review = Review.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
      @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
