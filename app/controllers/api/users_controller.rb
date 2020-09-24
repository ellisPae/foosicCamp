class Api::UsersController < ApplicationController
    

    def create
        @user = User.new(user_params)
    
        if @user.save
            login(@user)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
        end
    end


    def show
        @user = User.find(params[:id])
    end


    # def edit
    #     @user = User.find(params[:id])
    # end

    # def update
    #     @user = User.find(params[:id])
    #     if @user.update_attributes(user_params)
    #         @user.save
    #     else
    #         render '/api/edit'
    #     end
    # end
  



  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :artist_name, :location, :genre)
  end

end
