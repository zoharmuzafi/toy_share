require 'rails_helper'
require 'visitor_signs_ups'

describe "Visitor_Signs_Ups" do 
		it "needs to be completed with a valid email" do
			user = Factory(:user)
			visit login_path
			click_link "welcome"
			fill_in "Email", :with => user.email
			click_button "Toys"
  end
end 
