class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.create(review_params)
    respond_with @review, location: root_url
  end

  def update
    @review.update(review_params)
    respond_with @review
  end

  def destroy
    @review.destroy
    respond_with @review
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:name, :content)
    end
end
