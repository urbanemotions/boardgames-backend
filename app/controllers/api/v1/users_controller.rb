class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        user = User.find_or_create_by(name: params[:newUser])
        if user
            render json: user
        else
            render json: {error: 'User was not created'}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
