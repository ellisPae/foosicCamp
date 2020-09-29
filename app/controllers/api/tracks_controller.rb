class Api::TracksController < ApplicationController

    before_action :ensure_logged_in, only: %w(create edit destroy)
    
    def index

        @tracks = Track.all
        render "api/tracks/index"
    end

    def show
        @track = Track.find(params[:id])
        render "api/tracks/show"
    end

    def create
        @track = Track.new(track_params)
        @track.artist_id = current_user.id
        
        if @track.save
           render "api/users/show"
        else
            render json @track.errors.full_messages, status: 422
        end
    end


   def edit
        @track = Track.find(params[:id])
        render "api/tracks/edit"
    end


    def update
        @track = Track.find(params[:id])
        @track.artist_id = current_user.id
        
        if @track.update(track_params)
            render "api/tracks/show"
        else
            flash[:errors] = @track.errors.full_messages
        end
    end


    def destroy
        @track = current_user.tracks.find_by(id: params[:id])
        @track.delete if @track && @track.artist_id == current_user.id
        render "api/users/show"
    end

    private 

    def track_params
        params.require(:track).permit(:artist_id, :title, :price, :album_id, :release_date, :description, :credits, :track)
    end

end