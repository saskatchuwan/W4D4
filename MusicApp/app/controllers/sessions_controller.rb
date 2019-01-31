class SessionsController < ApplicationController

  def new

    session[:session_token] = nil
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    #can refernce user as symbol or string

    if @user
      log_in_user!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ['Invalid credentials']
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
  
end
