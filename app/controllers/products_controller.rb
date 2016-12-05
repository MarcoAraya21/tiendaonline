class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(Id_producto: params[:product][:Id_producto],
								Id_Categoria: params[:product][:Id_Categoria],
								Nombre: params[:product][:Nombre],
								Descripcion: params[:product][:Descripcion],
								Precio: params[:product][:Precio],
								Cantidad: params[:product][:Cantidad],
								Imagen: params[:product][:Imagen],
								Fecha_Agregado: params[:product][:Fecha_Agregado])

		if	@product.save
			redirect_to @product
		else
			render :new
		end
	end
end