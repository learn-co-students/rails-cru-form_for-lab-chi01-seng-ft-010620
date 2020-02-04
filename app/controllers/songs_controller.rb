class SongsController < ApplicationController

    def index
        @songs = Song.all
    end 

    def show
        @song = Song.find(params[:id])
    end
    
    def new 
        @song = Song.new
    end 

    def create
        song = Song.create(params_pass)
        redirect_to song_path(song)
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    def update 
        song = Song.find(params[:id])
        song.update(params_pass)
        redirect_to song_path(song)
    end 

    private 

        def params_pass
            params.require(:song).permit(:name, :artist_id, :genre_id)
        end 
end
