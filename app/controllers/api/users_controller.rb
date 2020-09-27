class Api::UsersController < ApplicationController
    
    def index
        @users = User.all
        render :index
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
            login(@user)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
            # {
            #     name: "Please enter your band name.",
            #     username: "Please enter your username",
            #     pw: "Please enter your password.",
            #     email: "Please enter your email.",
            #     agreement: "You must agree to the Terms of Use to create an account."
            # }
        end
    end


    def show
        @user = User.find(params[:id])
        render :show
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
    params.require(:user).permit(:email, :username, :password, :artist_name, :location)
  end

end
