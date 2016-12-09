class Category < ApplicationRecord
	has_many :products
	validates :Id_Categoria,presence: true,uniqueness: true
	validates :Nombre,presence: true,length:{minimum:3, maximum:30} 
	validates :Padre,presence: true
	#validar con expresiones regulares validates :username,format:{with: /regex/}


end