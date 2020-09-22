class Api::UsersController < ApplicationController
    

    def create
        @user = User.new(user_params)
    end

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


    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            @user.save
        else
        render '/api/edit'
    end
  




  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :location)
  end

end
