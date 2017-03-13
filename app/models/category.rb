class Category < ApplicationRecord
	has_many :productos
	validates :Nombre,length:{maximum:30},format:{with: /([0-9 a-z A-Z]{4,30})/,:message=>"de 4 a 30 caracteres"},uniqueness: {:message=>"Ya se encuentra en la BD"}
	#validar con expresiones regulares validates :username,format:{with: /regex/}
	

end
