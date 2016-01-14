class Toy < ActiveRecord::Base

	belongs_to :user
	belongs_to :city
	has_many :chats, dependent: :destroy

	has_attached_file :image, 
										styles: { large: "500x500>", medium: "300x300>", small: "200X200>", thumb: "100x100>" }, 
										storage: :s3,
										s3_credentials: Proc.new { |a| a.instance.s3_credentials },
										s3_host_name: 's3-us-west-2.amazonaws.com',
										path: "toys/:id/:style/image.:extension",
										default_url: "https://s3-us-west-2.amazonaws.com/toybinwdi24/default_bear.png"

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :name, presence: true
	validates :description, presence: true

	scope :by_gender, -> (gender) { where("gender = ? OR gender = 'Both'", gender) if gender.present? }
	scope :by_age_range, -> age_range { where(age_range: age_range) if age_range.present? }

	def s3_credentials
		{ :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET'] }
	end

end
