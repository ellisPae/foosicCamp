class Api::TracksController < ApplicationController

    before_action :ensure_logged_in, only: %w(create edit destroy)
    
    def index
        @tracks = Track.all
        render :index
    end

    def show
        @track = Track.find(params[:id])
        render :show
    end

    def create
        @track = Track.new(track_params)
        @track.artist_id = current_user.id
        
        if @track.save
            redirect user_url(@track.artist_id)
        else
            render json @track.errors.full_messages, status: 422
        end
    end


   def edit
        @track = Track.find(params[:id])
        render :edit
    end


    def update
        @track = Track.find(params[:id])
        @track.artist_id = current_user.id
        
        if @track.update(track_params)
            redirect_to user_url(@track.artist_id)
        else
            flash[:errors] = @track.errors.full_messages
            redirect_to user_url(@track.artist_id)
        end
    end


    def destroy
        @track = current_user.tracks.find_by(id: params[:id])
        @track.delete if @track && @track.artist_id == current_user.id
        redirect_to user_url(@track.artist_id)
    end

    private 

    def track_params
        params.require(:track).permit(:artist_id, :title, :price, :album_id, :release_date, :description, :credits)
    end

end