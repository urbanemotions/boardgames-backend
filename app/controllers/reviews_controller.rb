class ReviewsController < ApplicationController
    
    before_action :get_review, only: [:edit, :update]

    def new
        @review = Review.new 
        @boardgames = Boardgame.all 
        @users = User.all 
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to @review
        else
            render :new 
        end
    end

    def edit 
    end

    def update 
        if @review.update(review_params)
            redirect_to @review
        else
            render :edit
        end
    end

    # def destroy
    #     @review.destroy
    #     redirect_to review_path
    # end

    private

    def get_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :user_id, :boardgame_id)
    end

end
