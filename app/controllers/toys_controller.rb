class ToysController < ApplicationController
  
  # Find toy ID on page load
  before_filter :toy_params, except: [:index, :new, :create, :show]

  def index
    @toys = Toy.all
    @cities = City.all
  end

  def filter_toys
    
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = current_user.toys.new(toy_params)
    if @toy.save
      flash[:notice] = "#{@toy.name} is now avaiable to share."
      redirect_to user_path(current_user)
    else
      flash[:error] = @toy.errors.full_messages.join(", ")
      redirect_to new_toy_path
    end
  end

  def show
    @toy = Toy.find_by_id(params[:id])
  end

  def edit
    @toy = Toy.find_by_id(params[:id])
  end

  def update
    @toy.update_attributes(toy_params)
    if @toy.save
      flash[:notice] = "You have successfully altered #{@toy.name}"
      redirect_to user_path(current_user)
    else
      flash[:error] = @toy.error.full_messages.join(", ")
      redirect_to edit_toy_path(@toy)
    end
  end

  def destroy
    if @toy.destroy
      flash[:notice] = "You have successfully removed #{@toy.name}"
      redirect_to user_path(current_user)
    else
      flash[:error] = @toy.error.full_messages.join(", ")
      redirect_to edit_toy_path(@toy)
    end

    private 

    def toy_params
      params.require(:toy).permit( :name, :description, :gender, :age_range, :images, :user_id, :city_id, :available )
    end


  end
end
