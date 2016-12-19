class Producto < ApplicationRecord
  belongs_to :category
	has_many :reservations
	has_many :offers
	validates :Nombre,format:{with: /([0-9 a-z A-Z]{4,30})/,:message=>"de 4 a 30 caracteres"}
	validates :Descripcion,length:{minimum:10 ,:message => "Minimo 10 caracteres"}
	validates :Modelo,length:{minimum:2,maximum:10,:message=>"de 2 a 10 caracteres"}
	validates :Precio,format:{with: /(^[0-9]{3,8})/,:message=>"de 3 a 8 caracteres"}
	validates :Stock,format:{with: /(^[1-9]{1,3})/,:message=>"de 1 a 3 caracteres"}
	validates :Imagen,format:{with: /([a-z A-Z 0-9]{1,30})\.(jpg)/,:message=>"de 1 a 30 caracteres y debe ser .jpg"}
end
