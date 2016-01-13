class User < ActiveRecord::Base

	has_secure_password
	has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>"}, default_url: "http://www.riverstagetheatre.org/wp-content/uploads/2012/06/missing.png" 
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_many :messages, dependent: :destroy
	has_many :user_chats, dependent: :destroy
	has_many :chats, through: :user_chats
	has_many :toys, dependent: :destroy
	belongs_to :city

	validates :f_name, presence: true, length: { minimum: 2 }, on: :create
	validates :l_name, presence: true, length: { minimum: 2 }, on: :create
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, on: :create
	validates :password, presence: true, length: { minimum: 2 }, on: :create


# Using auth from omniauth 

    # Finding the user according to the provider and from the user id
    # If cannot find user, then create a user 
    def self.from_omniauth(auth)
        find_by(provider: auth['provider'], uid: auth['uid'])|| create_user_from_omniauth(auth)
    end

    # Creating an user using omniauth using the indicated listings
    def self.create_user_from_omniauth(auth)
        create(
            provider: auth['provider'], 
            uid: auth['uid'], 
            f_name: ((auth["info"]["name"]).split(" "))[0],
            l_name: ((auth["info"]["name"]).split(" "))[1], 
            email: auth['info']['email'], 
            password: FFaker::Internet.password,
            avatar: auth['info']['image'], 
            # bio: "To Edit Bio, Edit Your Profile"
        )
    end
end

