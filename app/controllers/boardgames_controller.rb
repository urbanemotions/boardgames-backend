class BoardgamesController < ApplicationController

    before_action :get_boardgame, only: [:edit, :update]
    
    def new
        @boardgame = Boardgame.new 
    end
    
    def create 
        @boardgame = Boardgame.new(boardgame_params)
        if @boardgame.save
            redirect_to @boardgame
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @boardgame.update(boardgame_params)
            redirect_to @boardgame
        else
            render :edit 
        end
    end

# i dont think i can think of a scenario where i can or want to delete the board game
    # def destroy 
    #     @boardgame.destroy 
    #     redirect_to @boardgame
    # end

    private

    def get_boardgame 
        @boardgame = Boardgame.find(params[:id])
    end
    
    def boardgame_params
        params.require(:boardgame).permit(:name, :image_url, :theme, :duration, :num_of_players, :age_requirements, :description)
    end

    
end