class UsersController < ApplicationController
before_filter :authorize, only: [:edit, :update, :destroy]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = @user.errors.map{|k,v| "#{k} #{v}".capitalize}
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = current_user
  user_params = params.require(:user).permit(:f_name, :l_name, :email, :avatar, :password, :bio)
  if @user.update_attributes(user_params)
    redirect_to user_path(@user)
  else 
    flash[:notice] = @user.errors.map{|k,v| "#{k} #{v}".capitalize}
    redirect_to edit_user_path
  end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :avatar, :password, :bio)
    end
end
