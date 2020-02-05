class SongsController < ApplicationController

    def index
        @songs = Song.all
    end 

    def new 
        @song = Song.new 
    end 

    def create
        @song = Song.new(params_for(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)

    end 

    def show 
        @song = Song.find(params[:id])
       
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    def update 
        @song = Song.find(params[:id])
        @song.update(params_for(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end   

    private 

    def params_for(*args)
        params.require(:song).permit(*args)
    end 

end
