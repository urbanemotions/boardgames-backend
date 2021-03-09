class Api::V1::UsersController < ApplicationController

    # before_action :get_user, only: [:show, :edit, :update, :destroy] - dont have any of this! should i take out get_user?

    # do i even need this new section????
    def new 
        user = User.new
    end

    # do i even need the index???? should i need the include?
    def index
        users = User.all
        render json: users, include: [:reviews]
    end

    def create
        # @user = User.new(user_params)
        user = User.new(name: params[:name])
        if @user.save
            render json: user
        else
            render json: {error: 'User was not created'}
        end
    end

    private
    #  not using this so do i need it
    def get_user
        user = User.find(params[:id])
    end
    #  not using this so do i need it
    def user_params
        params.require(:user).permit(:name)
    end
end
