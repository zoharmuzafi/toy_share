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

# testing - should render the message view, to create a message 
  describe "#messages" do
    before do
      get :messages
    end
   end 
    it "should route to the create a message page" do	
    end

# testing - should render the message view
  describe "#new_messages" do
    before do
      get :new_messages
    end
   end 
    it "should route to new message page" do	
    end

# testing - should render the chat view
  describe "#chats" do
    before do
      get :chats
    end
   end 
    it "should route to chats page" do	
    end

# testing - should render the toys view
  describe "#toys" do
    before do
      get :toys
    end
   end 
    it "should route to toys page" do	
    end

# testing - should render the toys view
  describe "#new_toy" do
    before do
      get :new_toy
    end
   end 
    it "should route to the new toy page" do	
    end

# testing - should render the edit toy view
  describe "#edit_toy" do
    before do
      get :edit_toy
    end
   end 
    it "should route to the edit toy page" do	
    end

end