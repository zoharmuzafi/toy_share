class WelcomeController < ApplicationController
  
  def index
  	@toys = Toy.order(created_at: :desc).limit(3)
  end
end
