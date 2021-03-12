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
        review = Review.new(content: params[:review], user_id: params[:userId], boardgame_id: params[:boardgameId])
        if review.save
            render json: review
        else
            render json: {error: 'Review Was Not Created'}
        end
    end

    def update 
        review = Review.find(params[:id])
        if review.update(review_params)
            render json: review
        else
            render json: {error: 'Review Was Not Updated'}
        end
    end

    def destroy
        Review.find(params[:id]).destroy
        render json: {message: 'Your Review Has Been Successfully Removed'}
    end 

    private

    def review_params
        params.require(:review).permit(:content, :user_id, :boardgame_id)
    end

end