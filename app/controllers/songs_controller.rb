class SongsController < ApplicationController

    def show
        set_song
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def edit
        set_song
    end

    def update
        set_song
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    def index
        @songs = Song.all
    end

    private

    def set_song
        @song = Song.find_by(id: params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
