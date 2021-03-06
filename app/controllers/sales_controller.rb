class SalesController < ApplicationController
	before_action :authenticate_user! , :set_sale, only: [:show, :edit, :update, :destroy]
  def index
  	@sales = Sale.all
  end
  
  def new
		@sale = Sale.new
	end

  def create
		@sale = current_user.sales.new(	producto_id: params[:sale][:producto_id],
							user_id: params[:sale][:user_id],
							Cantidad: params[:sale][:Cantidad].to_i)
		@sale.Total = @sale.Cantidad * @sale.producto.Precio
		p = Producto.find params[:sale][:producto_id]
		p.Stock = p.Stock - @sale.Cantidad
		if	p.save
			if	@sale.save
				return redirect_to "/sales/"
			else
				return redirect_to :back
			end 
		else
			return redirect_to :back, alert: "STOCK MINIMO , NO SE PUEDE VENDER"
		end
	end

  def destroy
		@sale = Sale.find(params[:id])
		@sale.destroy
		redirect_to ventas_path
	end

	  private
    # Use callbacks to share common setup or constraints between actions.	
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
end