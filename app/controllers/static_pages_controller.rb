class StaticPagesController < ApplicationController
  def home
    @reviews = Review.order("created_at DESC")
    @review = Review.new
  end
end
