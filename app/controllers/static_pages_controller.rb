class StaticPagesController < ApplicationController
	def home
		@reviews = Review.order("created_at ASC")
	end
end
