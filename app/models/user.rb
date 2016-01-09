class User < ActiveRecord::Base

	has_secure_password
	has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>"}, default_url: "http://www.riverstagetheatre.org/wp-content/uploads/2012/06/missing.png" 
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_many :user_chats, dependent: :destroy
	has_many :chats, through: :user_chat
	has_many :toys, dependent: :destroy
	belongs_to :city

end
