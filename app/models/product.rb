class Product < ApplicationRecord
	validates :Id_producto,presence: true,uniqueness: true
	validates :Id_Categoria,presence: true
	validates :Nombre,presence: true,length:{minimum:3, maximum:30} 
	validates :Descripcion,presence: true,length:{minimum:10}
	validates :Precio,presence: true
	validates :Cantidad,presence: true
	validates :Imagen,presence: true
	validates :Fecha_Agregado,presence: true

	#validar con expresiones regulares validates :username,format:{with: /regex/}


end
