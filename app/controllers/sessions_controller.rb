class SessionsController < ApplicationController
  
  def new
  end

  def create
  	@user = User.find_by_email(params[:email])
  	if @user && @user.authenticate

  	end
  end

  def destroy

  end

  private

  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
