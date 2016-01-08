class User < ActiveRecord::Base

	has_secure_password

	has_many :user_chats, dependent: :destroy
	has_many :chats, through: :user_chat
	has_many :toys, dependent: :destroy
	belongs_to :city

end
