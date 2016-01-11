class ToysController < ApplicationController
  before_filter :get_toy, except: [:index, :new, :create]
  before_filter :toy_params, only: [:create]
  
  def index
    @cities = City.all
    @toys = Toy.all
    params.delete_if { |k,v| v.blank? }
    if params[:name].present?
      @cities = City.find_by_name(params[:name])
      @toys = Toy.where(city_id: @cities.id)
      filter_toys(params).each do |key, value|
        @toys = @toys.public_send(key, value) if value.present?
      end
    elsif (params[:gender] || params[:age_range]).present?
      @cities = City.all
      filter_toys(params).each do |key, value|
        @toys = @toys.public_send(key, value) if value.present?
      end
    end
  end

  def new
    if current_user
      @toy = Toy.new
    else
      redirect_to login_path
    end
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
    
  end

  def edit
    unless current_user.id == @toy.user_id 
      redirect_to login_path
    end
  end

  def update
    toy_params = params.require(:toy).permit(:name, :description, :gender, :age_range, :image, :user_id, :available )
    if @toy.update_attributes(toy_params)
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
  end


  private 

  def toy_params
    params.require(:toy).permit(:name, :description, :gender, :age_range, :image, :user_id, :city_id, :available )
  end

  def get_toy
    toy_id = params[:id]
    @toy = Toy.find_by_id(toy_id)
  end

  def filter_toys(params)
    params.slice(:gender, :city, :age_range)
  end

end
