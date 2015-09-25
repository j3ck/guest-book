module Api::Mobile
  class Reviews < Grape::API
    format :json

    helpers do
      attr_accessor :review

      def set_review
        @review = Review.find(params[:id])
      end
    end

    resource :reviews do
      desc 'Return all reviews'
      get do
        {reviews: Review.order(created_at: :asc)}
      end

      desc 'Create a review'
      params do
        requires :name, type: String, desc: 'Review name'
        requires :content, type: String, desc: 'Review content'
      end
      post do
        review = Review.new(name: params[:name], content: params[:content])

        {error_message: review.errors.to_a.join(', ').downcase} unless review.save
        {message: 'Review created!', review_id: review.id}
      end

      params { requires :id, type: Integer, desc: 'Uniq ID for review' }
      route_param :id do

        desc 'Return review'
        get do
          set_review
          {review: review}
        end

        desc 'Delete review'
        post :destroy do
          set_review.destroy
          {message: 'Review deleted!'}
        end

      end

    end
  end
end
