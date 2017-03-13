class TypesController < ApplicationController
  def index
  end

	def new
		@type = Type.new
	end

	 def edit
  	end

	def create
		@type = Type.new(Descripcion: params[:type][:Descripcion])

		if	@Type.save
			redirect_to "/tipos/"
		else
			render :new
		end
	end

end