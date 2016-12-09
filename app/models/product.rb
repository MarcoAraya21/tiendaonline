class Product < ApplicationRecord
	has_many :sales
	belongs_to :category
	has_many :reservations
	has_many :offers
	validates :Nombre,presence: true,length:{minimum:3, maximum:30} 
	validates :Descripcion,presence: true,length:{minimum:10}
	validates :Precio,presence: true
	validates :Stock,presence: true
	validates :Imagen,presence: true
	validates :Fecha_Agregado,presence: true
	
	#validar con expresiones regulares validates :username,format:{with: /regex/}


end
