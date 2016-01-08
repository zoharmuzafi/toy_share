class SessionsController < ApplicationController
  def new
  end

  def create
  	# Sends request to facebook
  	auth = request.env["omniauth.auth"]
  	# Requesting only basic information from facebook
  	session[:omniauth] = auth.except('extra')
  	# Allows user to sign in through omniauth 
  	user = User.sign_in_from_omniauth(auth)

    @user = User.find_by_email(params[:email]) 
    if @user && @user.authenticate(params[:password]) 
      # When signing in, users are assigned an user id
      session[:user_id] = @user.id
      # After signing in, users are directed to root path
      redirect_to root_path, notice: "You are signed in!"
    else 
      flash[:error] = "Oops! Something went wrong."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "You are logged out!"

  end
  
end