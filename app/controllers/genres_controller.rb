class GenresController < ApplicationController

    def show 
        @genre = Genre.find(params[:id])
    end 

    def new 
        @genre = Genre.new
    end 

    def create 
        genre = Genre.create(params_pass)
        redirect_to genre_path(genre)
    end 

    def edit 
        @genre = Genre.find(params[:id])
    end 

    def update 
        genre = Genre.find(params[:id])
        genre.update(params_pass)
        redirect_to genre_path(genre)
    end 

    private 

        def params_pass
            params.require(:genre).permit(:name)
        end 
end
