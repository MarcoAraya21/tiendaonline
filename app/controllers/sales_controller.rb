class SalesController < ApplicationController
  def index
  end
  
  def new
		@sale = Sale.new
	end

  def create
		@sale = Sale.new(	producto_id: params[:sale][:producto_id],
							user_id: params[:sale][:user_id],
							Cantidad: params[:sale][:Cantidad],
							Total: params[:sale][:Total])

		if	@sale.save
			redirect_to "/ventas/"
		else
			render :new
		end
	end
end