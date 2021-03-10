class Api::V1::BoardgamesController < ApplicationController
    
    # i need index because i want to show all the boardgames on the left hand side of the page
    def index
        boardgames = Boardgame.all
        render json: boardgames, include: [:reviews]
    end

    # i need a show because i want to show all the boardgames on the right hand side of the page 
    def show 
        boardgame = Boardgame.find(params[:id])
        render json: boardgame
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
        boardgame = Boardgame.find(params[:id])
        if boardgame.update(boardgame_params)
            render json: boardgame
        else
            render json: {error: 'Board Game was not updated'}
        end
    end

    private
    
    def boardgame_params
        params.require(:boardgame).permit(:name, :image_url, :theme, :duration, :num_of_players, :age_requirements, :description)
    end

end