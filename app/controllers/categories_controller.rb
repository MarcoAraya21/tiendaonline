class CategoriesController < ApplicationController
	  before_action :set_category, only: [:show, :edit, :update, :destroy]

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
	 def edit
  	end
	def create
		@category = Category.new(Nombre: params[:category][:Nombre])

		if	@category.save
			redirect_to "/categories/"
		else
			render :new
		end
	end
	  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Categoria fue actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to categorias_path
	end

	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:Nombre)
    end
end