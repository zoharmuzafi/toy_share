class SessionsController < ApplicationController
  
  def new
  end

  def create_with_omniauth
   user = User.from_omniauth(request.env["omniauth.auth"])
   session[:user_id] = user.id
   redirect_to user_path(user)
  end

  def create
  	@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			flash[:notice] = "You have successfully logged in"
			session[:user_id] = @user.id
      if params[:toy_show]
        toy = Toy.find(params[:toy_id])
        redirect_to toy_path(toy)
      else
			 redirect_to user_path(@user)
      end
		else
			flash[:error] = "Username or password is incorrect"
			if params[:toy_show]
        toy = Toy.find(params[:toy_id])
        redirect_to toy_path(toy)
      else
       redirect_to toys_path
      end
		end
  end

  def destroy
  	session[:user_id] = nil
    flash[:notice] = "Logged out successfully"
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
