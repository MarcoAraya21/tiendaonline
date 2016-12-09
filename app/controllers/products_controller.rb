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
		@product = Product.new(Nombre: params[:product][:Nombre],
								Descripcion: params[:product][:Descripcion],
								Precio: params[:product][:Precio],
								Stock: params[:product][:Stock],
								Imagen: params[:product][:Imagen],
								Fecha_Agregado: params[:product][:Fecha_Agregado])

		if	@product.save
			redirect_to @product
		else
			render :new
		end
	end
	def update
		#@product.update_attributes({stock:'30'})
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to mantencion_path
	end
end