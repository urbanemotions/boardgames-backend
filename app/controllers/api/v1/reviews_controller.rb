class Api::V1::ReviewsController < ApplicationController

    # i need index because i want to show all the reviews with the user name under the boardgame
    def index
        reviews = Review.all
        render json: reviews # , include: [:users]
    end
    
    # i need a show because i want to show all the reviews on the right bottom hand side of the page 
    def show 
        review = Review.find(params[:id])
        render json: review            
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: review
        else
            render json: {error: 'Review was not created'}
        end
    end

    def update 
        review = Review.find(params[:id])
        if review.update(review_params)
            render json: review
        else
            render json: {error: 'Review was not updated'}
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :user_id, :boardgame_id)
    end

end