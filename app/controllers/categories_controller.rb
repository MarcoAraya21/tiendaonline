class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def show
		@category = Category.find(params[:id])
		#Category.where("id = ?",params[:id])
	end
	def new
		@category = Category.new
	end
	def create
		@category = Category.new(Nombre: params[:category][:Nombre],
								Padre: params[:category][:Padre])

		if	@category.save
			redirect_to @category
		else
			render :new
		end
	end
	def destroy
		
	end
end