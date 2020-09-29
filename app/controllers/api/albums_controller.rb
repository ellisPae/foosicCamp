class Api::AlbumsController < ApplicationController

    before_action :ensure_logged_in, only: %w(create edit destroy)
    
    def index
        @albums = Album.all
        render "api/albums/index"
    end

    def show
        @album = album.find(params[:id])
        render "api/albums/show"
    end


    def create
        @album = Album.new(album_params)
        @album.artist_id = current_user.index
        
        if @album.save
            render "api/users/show"
        else
            render json @album.errors.full_messages, status: 422
        end
    end


   def edit
        @album = album.find(params[:id])
        render "api/albums/edit"
    end


    def update
        @album = Album.find(params[:id])
        @album.artist_id = current_user.id
        
        if @album.update(album_params)
            render "api/albums/show"
        else
            flash[:errors] = @album.errors.full_messages
        end
    end


    def destroy
        @album = current_user.albums.find_by(id: params[:id])
        @album.delete if @album && @album.artist_id == current_user.id
        render "api/users/show"
    end


    private 

    def album_params
        params.require(:album).permit(:artist_id, :title, :price, :release_date, :description, :credits, :pic)
    end

end