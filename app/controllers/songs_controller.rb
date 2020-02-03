class SongsController < ApplicationController
    def new 
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find(params[:id])
        @genre = @song.genre
        @artist = @song.artist
    end

    def index
        @songs = Song.all
    end

    def update
        @song = Song.find(params[:id])
       # artist = Artist.find_or_create_by(id: song_params[:artist_id])
        #genre = Genre.find_or_create_by(id: song_params[:genre_id])
        @song.update(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end 

    private
    
    def song_params
        allowed = params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
