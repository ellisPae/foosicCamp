class Api::GenreJoinsController < ApplicationController

    before_action :ensure_logged_in


    def create
        @genre_join = GenreJoin.new(genre_join_params)
        render "api/genre_joins/show"
    end

    def update
        @genre_join = GenreJoin.find(params[:id])
        if @genre_join.update(genre_join_params)
            render "api/genre_joins/show"
        else
            flash[:errors] = @genre_join_params.errors.full_messages
        end
    end

    def destroy
        @genre_join = current_user.genre_joins.find_by(id: params[:id])
        @genre.delete if @genre_join
        render "api/genre_joins/show"
    end


    private

    def genre_join_params
        require(:genre_join).permit(:genre_id)
    end

end
