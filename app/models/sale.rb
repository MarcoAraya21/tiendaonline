class Sale < ApplicationRecord
	belongs_to :user
	belongs_to :producto
	accepts_nested_attributes_for :producto

	def Total
  		self.producto.Precio * self.Cantidad
	end

	def Producto.Stock
		self.producto.Stock = self.producto.Stock - self.Cantidad
	end
end
