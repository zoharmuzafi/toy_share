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

  	@user = User.find_by_email(user_params[:email])
		if @user && @user.authenticate(user_params[:password])
			flash[:notice] = "You have successfully logged in"
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			flash[:error] = "Username or password is incorrect"
			redirect_to login_path
		end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
