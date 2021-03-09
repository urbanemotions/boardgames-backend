class Api::V1::ReviewsController < ApplicationController
    
    before_action :get_review, only: [:edit, :update]

    def new
        @review = Review.new 
        @boardgames = Boardgame.all 
        @users = User.all 
    end

    def create
        # review = Review.new(review_params)
        review = Review.new(content: params[:content])
        if @review.save
            render json: review
        else
            render json: {error: 'Review was not created'}
        end
    end

    def edit 
    end

    def update 
        # review = Review.find(params[:id])
        if @review.update(review_params)
            head :no_content
        else
            render json: {error: 'Review was not updated'}
        end
    end

    private

    def get_review
        review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :user_id, :boardgame_id)
    end

end
