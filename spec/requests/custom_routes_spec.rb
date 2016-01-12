require 'rails_helper'

# VIEW TESTING 
# testing - should render the login view 
RSpec.describe "CustomRoutes", type: :request do
  describe "#login" do
    before do
      get :login
    end
   end 
    it "should route to the login page" do	
    end

# testing - should render the login view
  describe "#signup" do
    before do
      get :signup
    end
   end 
    it "should route to the signup page" do	
    end




end