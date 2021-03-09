class Api::V1::UsersController < ApplicationController

    def create
        user = User.find_or_create_by(user_params)
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
