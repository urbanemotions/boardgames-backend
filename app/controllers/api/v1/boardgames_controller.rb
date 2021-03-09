class Api::V1::BoardgamesController < ApplicationController

    before_action :get_boardgame, only: [:update]
    
    # i need index because i want to show all the boardgames on the left hand side of the page
    def index
        boardgames = Boardgame.all
        render json: boardgames, include: [:reviews]
    end

    # i need a show because i want to show all the boardgames on the left hand side of the page 
    # come back and add to this
    def show 
        
    end

    def create 
        boardgame = Boardgame.new(boardgame_params)
        if boardgame.save
            render json: boardgame 
        else
            render json: {error: 'Board Game was not created'}
        end
    end

    def update
        if boardgame.update(boardgame_params)
            render json: boardgame
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