require "rails_helper"
require 'spec_helper'

RSpec.describe ToysController, type: :controller do

  describe "#index" do
    before do
      @all_toys = Toy.all
      get :index
    end
  end 

  it "should assign @toys" do
      expect(assigns(:toys)).to eq(@all_toys)
    end

  it "should render the :index view" do
  		get :index
      expect(response).to render_template("index")
    end
 
  describe "#new" do
    before do
      get :new
    end
  end 

  it "should redirect when toys " do
      expect(assigns(:toys)).to eq(@all_toys)
    end

  def new
    if current_user
      @toy = Toy.new
    else
      redirect_to login_path
    end
  end


  describe "#create" do
  	context "success" do 
  		before do 
  			@toys_count = Toy.count 
 

  		post :create, toy: {

      name: FFaker::Name.name,
      description: FFaker::HipsterIpsum.characters,
      gender: FFaker::Gender.random,
      age_range: FFaker::HipsterIpsum.characters,
      user_id: 12,
      city_id: 12,
      available: true,
      created_at: FFaker::Time.date,
      updated_at: FFaker::Time.date,
      image_file_name: FFaker::HipsterIpsum.characters,
      image_content_type: FFaker::HipsterIpsum.characters,
      image_file_size: 12,
      image_updated_at: FFaker::Time.date

}
	end 


  # describe "#show" do
  #   before do
  #     @toy = FactoryGirl.create(:toy)
  #     get :show, id: @toy.id
  #   end




		end 
	end 
 end 

 


#     it "should assign @toy" do
#       expect(assigns(:toy)).to eq(@toy)
#     end

#     it "should render the :show view" do
#       expect(response).to render_template(:show)
#     end
#   end

#   describe "#edit" do
#     before do
#       @toy = FactoryGirl.create(:toy)
#       get :edit, id: @toy.id
#     end

#     it "should assign @toy" do
#       expect(assigns(:toy)).to eq(@toy)
#     end

#     it "should render the :edit view" do
#       expect(response).to render_template(:edit)
#     end
#   end

#   describe "#update" do
#     before do
#       @toy = FactoryGirl.create(:toy)
#     end

#     context "success" do
#       before do  
#         @name = FFaker::Lorem.words(5).join(" ")
#         @description = FFaker::Lorem.sentence
#         @category = FFaker::Lorem.words(3).join
#         @gender = FFaker::Lorem.words(3).join
#         @user_ud = FFaker::Lorem.sentence
#         @city_id = FFaker::Lorem.sentence
#         @available = FFaker::Lorem.boolean
#         @created_at = FFaker::Lorem.date
#         @updated_at = FFaker::Lorem.date
#         @image_content_type = FFaker::Lorem.image
#         @image_file_size = FFaker::Lorem.numbers
#         @image_dated_at = FFaker::Lorem.date


#       it "should update toy in the database" do
#         expect(@toy.name).to eq(@new_name)
#         expect(@toy.description).to eq(@new_description)
#         expect(@toy.age_range).to eq(@age_range)
#         expect(@toy.user_id).to eq(@user_id)
#         expect(@toy.city_id).to eq(@new_city_id)
#         expect(@toy.available).to eq(@new_available)
#         expect(@toy.created_at).to eq(@new_created-at)
#         expect(@toy.updated_at).to eq(@new_updated_at)
#         expect(@toy.image_file_name).to eq(@new_image_file_name)
#         expect(@toy.image_content_type).to eq(@new_image_content_name)
#         expect(@toy.image_file_size).to eq(@new_image_file_size)
#         expect(@toy.image_updated_at).to eq(@new_image_updated_at)
#       end

#       it "should redirect_to 'toy_path'" do
#         expect(response.status).to be(302)
#         expect(response).to redirect_to(toy_path(@toy))
#       end
#     end


#   describe "#destroy" do
#     before do
#       toy = FactoryGirl.create(:toy)
#       @toys_count = Toy.count
#       delete :destroy, id: toy.id
#     end

#     it "should remove toy from the database" do
#       expect(Toy.count).to eq(@toys_count - 1)
#     end

#     it "should redirect_to 'root_path'" do
#       expect(response.status).to be(302)
#       expect(response).to redirect_to(root_path)
#      end
# end