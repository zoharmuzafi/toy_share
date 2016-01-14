class WelcomeController < ApplicationController
  def index
  	@homepage = true
  	@toys = Toy.order(created_at: :desc).limit(3)
  end
end
