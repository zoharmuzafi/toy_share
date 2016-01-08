Rails.application.config.middleware.use OminAuth::Builder do 
	provider :facebook, '786741168121499', 'd8ae448f4af71eeca96f4fdfde99a72a'	
end