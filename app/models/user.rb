class User < ActiveRecord::Base

	has_secure_password

	has_many :user_chats, dependent: :destroy
	has_many :chats, through: :user_chat
	has_many :toys, dependent: :destroy
	belongs_to :city

	# Using auth from omniauth 
	def self.sign_in_form_omniauth(auth)
		# Finding the user according to the provider and from the user id
		# If cannot find user, then create a user 
		find_by(provider: auth[''], user_id: auth[:'user_id']) || create_user_from_omniauth(auth)
	end 

	# Creating an user using omniauth using the indicated listings
	def self.create_user_from_omniauth(auth)
		create(
			provider: auth['provider'], 
			user_id: auth['user_id'], 
			name: auth['info']['name']
		)
	end 
end 