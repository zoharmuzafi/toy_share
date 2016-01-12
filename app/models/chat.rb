class Chat < ActiveRecord::Base

	has_many :user_chats, dependent: :destroy
	has_many :users, through: :user_chats
	has_many :messages, dependent: :destroy
	belongs_to :toy
	
end
