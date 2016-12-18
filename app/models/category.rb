class Category < ApplicationRecord
	has_many :products
	validates :Nombre,presence: true,format:{with: /([0-9 a-z A-Z]{4,30})/}
	validates :Padre,presence: true
	#validar con expresiones regulares validates :username,format:{with: /regex/}


end
