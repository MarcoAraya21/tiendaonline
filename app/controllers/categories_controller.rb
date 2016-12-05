class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def show
		@category = Category.find(params[:id])
	end
	def new
		@category = Category.new
	end
	def create
		@category = Category.new(Id_Categoria: params[:category][:Id_Categoria],
								Nombre: params[:category][:Nombre],
								Padre: params[:category][:Padre])

		if	@category.save
			redirect_to @category
		else
			render :new
		end
	end
end