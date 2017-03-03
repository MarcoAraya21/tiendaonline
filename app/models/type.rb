class Type < ApplicationRecord
	has_many :users
	validates :Descripcion,format:{with: /([0-9 a-z A-Z]{4,30})/,:message=>"de 4 a 30 caracteres"},uniqueness: {:message=>"Ya se encuentra en la BD"}
	accepts_nested_attributes_for :producto
end
