class Customer < ApplicationRecord
	has_many :reservations
	validates :Rut,length:{is:8},format:{with: /(\d{4})/,:message=>"de 8 digitos , sin puntos ni digito verificador"}
	validates :Nombre,length:{maximum:20},format:{with: /([a-z ñáéíóú]{3,20})/,:message=>"de 3 a 20 caracteres"}
	validates :Apellido,length:{maximum:20},format:{with: /([a-z ñáéíóú]{3,20})/,:message=>"de 3 a 20 caracteres"}
	
end
