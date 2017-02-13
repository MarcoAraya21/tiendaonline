class ProducttypesController < ApplicationController
  before_action :set_producttype, only: [:show, :edit, :update, :destroy]

  # GET /producttypes
  # GET /producttypes.json
  def index
    @producttypes = Producttype.all
  end

  # GET /producttypes/1
  # GET /producttypes/1.json
  def show
  end

  # GET /producttypes/new
  def new
    @producttype = Producttype.new
  end

  # GET /producttypes/1/edit
  def edit
  end

  # POST /producttypes
  # POST /producttypes.json
  def create
    @producttype = Producttype.new(producttype_params)

    respond_to do |format|
      if @producttype.save
        format.html { redirect_to "/producttypes/", notice: 'Producttype was successfully created.' }
        format.json { render :show, status: :created, location: @producttype }
      else
        format.html { render :new }
        format.json { render json: @producttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producttypes/1
  # PATCH/PUT /producttypes/1.json
  def update
    respond_to do |format|
      if @producttype.update(producttype_params)
        format.html { redirect_to @producttype, notice: 'Producttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @producttype }
      else
        format.html { render :edit }
        format.json { render json: @producttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producttypes/1
  # DELETE /producttypes/1.json
  def destroy
    @producttype.destroy
    respond_to do |format|
      format.html { redirect_to producttypes_url, notice: 'Producttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producttype
      @producttype = Producttype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producttype_params
      params.require(:producttype).permit(:Nombre)
    end
end
