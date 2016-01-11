class Toy < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	has_attached_file :image, styles: { large: "500x500>", medium: "300x300>", small: "200X200>", thumb: "100x100>" }, default_url: "http://www.magic-stickers.com/images/produits/interm/Stickers_ardoise_ourson_ardsia_ursozinho_55006.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :name, presence: true
	validates :description, presence: true

	scope :gender, -> (gender) { where gender: gender }
	scope :age_range, -> (age_range) { where age_range: age_range }
	scope :city, -> (city) { where city: city }

end
