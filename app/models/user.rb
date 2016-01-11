class User < ActiveRecord::Base

	has_secure_password
	has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>"}, default_url: "http://www.riverstagetheatre.org/wp-content/uploads/2012/06/missing.png" 
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_many :messages, dependent: :destroy
	has_many :user_chats, dependent: :destroy
	has_many :chats, through: :user_chats
	has_many :toys, dependent: :destroy
	belongs_to :city

	validates :f_name, presence: true, length: { minimum: 2 }
	validates :l_name, presence: true, length: { minimum: 2 }
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, presence: true, length: { minimum: 2 }
end

