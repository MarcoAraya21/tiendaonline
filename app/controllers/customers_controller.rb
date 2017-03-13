class CustomersController < ApplicationController
	  before_action :set_customer, only: [:show, :edit, :update, :destroy]

	def index
		@customers = Customer.all
	end
	def show
		@customer = Customer.find(params[:id])
		#Category.where("id = ?",params[:id])
	end
	def new
		@customer = Customer.new
	end
	 def edit
  	end
	def create
		@customer = Customer.new(Rut: params[:customer][:Rut],
								 Nombre: params[:customer][:Nombre],
								 Apellido: params[:customer][:Apellido])

		if	@customer.save
			redirect_to "/clientes/"
		else
			render :new
		end
	end
	  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Cliente fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end
	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to clientes_path
	end

	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:Rut, :Nombre, :Apellido)
    end
end