class UsersController < ApplicationController
  def new
    @user = User.new  #instantiate new user with no attributes
    render :new       #open the new user view
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login_in_user!(@user)
      redirect_to user_url(@user) # for the show path, need to always pass in user instance
    else
      #show some error with flash[:errors]
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_digest, :session_token)
  end

end
