class Api::GenresController < ApplicationController

    def index
        @genres = Genre.all
        render "api/genres/index"
    end

    def show
        @genre = Genre.find(params[:id])
        render "api/genres/show"
    end




    private

    def genre_params
        require(:genre).permit(:category)
    end

end
