  #
  # spec/models/user_spec.rb
  #
  require 'rails_helper'
  require 'spec_helper'
  
  RSpec.describe User, type: :model do
   before do
      user_params = Hash.new
      user_params[:f_name] = FFaker::Name.first_name
      user_params[:l_name] = FFaker::Name.last_name
      user_params[:password_digest] = FFaker::Internet.password
      user_params[:email] = FFaker::Internet.email
      user_params[:bio] = FFaker::Lorem.sentence
      user_params[:provider] = FFaker::Company.name
      user_params[:uid] = FFaker::HipsterIpsum.characters
      user_params[:city_id] = 12
      user_params[:created_at] = FFaker::Time.date
      user_params[:updated_at] = FFaker::Time.date
      user_params[:avatar_file_name] = FFaker::Name.name
      user_params[:avatar_content_type] = FFaker::HipsterIpsum.characters
      user_params[:avatar_file_size] = 10
      user_params[:avatar_updated_at] = FFaker::Time.date
  
      @user = User.create(user_params)
   end
    describe "#f_name" do
      it "should receive first name" do
        expect(@user.f_name).to eq("#{@user.f_name}")
      end
    end
    describe "#l_name" do
      it "should receive last name" do
        expect(@user.l_name).to eq("#{@user.l_name}")
      end
    end

    describe "#email" do
      it "should receive email address" do
        expect(@user.email).to eq("#{@user.email}")
      end
    end

    describe "#password" do
      it "should receive password" do
        expect(@user.password_digest).to eq("#{@user.password_digest}")
      end
    end

    describe "#provider" do
      it "should receive provider" do
        expect(@user.provider).to eq("#{@user.provider}")
      end
    end

    describe "#uid" do
      it "should receive user id" do
        expect(@user.uid).to eq("#{@user.uid}")
      end
    end

    describe "#city_id" do
      it "should receive city id" do
        expect(@user.city_id).to be > 0
      end
    end

    describe "#created_at" do
      it "should receive time of when user created the account" do
        expect(@user.created_at).to eq("#{@user.created_at}")
      end
    end

    describe "#updated_at" do
      it "should receive time of when user updated the account" do
        expect(@user.updated_at).to eq("#{@user.updated_at}")
      end
    end

    describe "#avatar_file_name" do
      it "should receive the avatar's file name" do
        expect(@user.avatar_file_name).to eq("#{@user.avatar_file_name}")
      end
    end

    describe "#avatar_content_type" do
      it "should receive time the avatar's content type" do
        expect(@user.avatar_content_type).to eq("#{@user.avatar_content_type}")
      end
    end

    describe "#avatar_file_size" do
      it "should receive city id" do
        expect(@user.avatar_file_size).to be > 0
      end
    end

    describe "#avatar_updated_at" do
      it "should receive city id" do
        expect(@user.avatar_updated_at).to eq("#{@user.avatar_updated_at}")
      end
    end

    describe "#full_name" do 
      it "should combine first name and last name" do 
        expect(@user.full_name).to eq("#{@user.f_name} #{@user.l_name}")
      end 
    end 
end 