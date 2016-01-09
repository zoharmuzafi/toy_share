class Toy < ActiveRecord::Base

	belongs_to :user
	belongs_to :city

	has_attached_file :images, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.magic-stickers.com/images/produits/interm/Stickers_ardoise_ourson_ardsia_ursozinho_55006.png"
	validates_attachment_content_type :images, content_type: /\Aimage\/.*\Z/

end
