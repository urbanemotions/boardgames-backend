class Api::V1::BoardgamesController < ApplicationController

    before_action :get_boardgame, only: [:edit, :update]
    
    # do i need index since we are doing .js files 
    def index
        boardgames = Boardgame.all
        render json: boardgames, include: [:reviews]
    end
    
    def new
        boardgame = Boardgame.new 
    end
    
    def create 
        # @boardgame = Boardgame.new(boardgame_params)
        # can i use boardgame_params below???????
        boardgame = Boardgame.new(boardgame_params)
        if @boardgame.save
            render json: boardgame 
        else
            render json: {error: 'Board Game was not created'}
        end
    end

    def edit
    end

    def update
        # can i use the private method below?
        boardgame = Boardgame.find(params[:id])
        # can i use boardgames params?
        if boardgame.update(boardgame_params)
            head :no_content # im not sure what this does, why would there be no content?
        else
            render json: {error: 'Board Game was not updated'}
        end
    end

    private

    def get_boardgame 
        boardgame = Boardgame.find(params[:id])
    end
    
    def boardgame_params
        params.require(:boardgame).permit(:name, :image_url, :theme, :duration, :num_of_players, :age_requirements, :description)
    end

end