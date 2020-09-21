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

    
#     def update
#         @poem = Poem.find(params[:id])
#     if current_user.id == @poem.user_id
#       if @poem.update(poem_params)
#         redirect_to poems_url
#       else
#         flash[:errors] = ["Something went wrong!"]
#         render :edit
#       end
#     else
#       flash[:errors] = ["Something went wrong!"]
#       redirect_to edit_poem_url(@poem.id)
#     end
#   end





  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :location)
  end

end
