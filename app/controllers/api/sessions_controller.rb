class Api::SessionsController < ApplicationController

  def create
    
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
  
    
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: [default: "Invalid username/password combination"], status: 401
        # { 
        #   username: "Please enter your username",
        #   password: "Please enter your password",
        #   default: "Invalid username/password combination"
        # }
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      render "api/users/show"
    else
      render json: ["Not signed in"], status: 404
    end
  end

end
