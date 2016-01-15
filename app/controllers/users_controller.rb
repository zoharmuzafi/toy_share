
class UsersController < ApplicationController
before_filter :authorize, only: [:edit, :update, :destroy]


  def create
    @user = User.new(user_params)
    if user_params[:toy_show]
      toy = Toy.find(user_params[:toy_id])
    end
    if @user.save
      session[:user_id] = @user.id
      if toy
        redirect_to toy_path(toy)
      else
        redirect_to user_path(@user)
      end
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      if toy
        redirect_to toy_path(toy)
      else
        redirect_to toys_path
      end
    end
  end

  def show
    @user = User.find(params[:id])
    @toys = @user.toys.paginate(:page => params[:page], :per_page => 6)
    @cities = City.all
  end

  def edit
    @user = current_user
  end

  def update
  @user = current_user
  user_params = params.require(:user).permit(:f_name, :l_name, :email, :avatar, :password, :bio)
  if @user.update_attributes(user_params)
    redirect_to user_path(@user)
    flash[:notice] = "Your profile was updated!"
  else 
    flash[:error] = @user.error.full_messages.join(", ")
    redirect_to edit_user_path
  end
  end

  def destroy
    @user = User.find(params[:id])
  if @user.destroy
      flash[:notice] = "Accout Deleted"
      session[:user_id] = nil
      redirect_to root_path
    else
      flash[:error] = @user.error.full_messages.join(", ")
      redirect_to edit_user_path(@user)
    end
  end

   private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :avatar, :password, :bio, :toy_show, :toy_id, :city_id)
    end
end
