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
      user_params[:email] = FFaker::Internet.email
      user_params[:password] = FFaker::Lorem.words(2).join
      @user = User.create(user_params)
   end
    describe "#f_name" do
      it "should receive first name" do
        expect(@user.ff_name).to eq("#{@user.f_name}")
      end
    end

  end