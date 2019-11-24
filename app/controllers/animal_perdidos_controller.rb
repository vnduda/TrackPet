class AnimalPerdidosController < ApplicationController
  before_action :set_animal_perdido, only: [:show, :edit, :update, :destroy]

  # GET /animal_perdidos
  # GET /animal_perdidos.json
  def index
    @animal_perdidos = AnimalPerdido.all
  end

  # GET /animal_perdidos/1
  # GET /animal_perdidos/1.json
  def show
  end

  # GET /animal_perdidos/new
  def new
    @animal_perdido = AnimalPerdido.new
  end

  # GET /animal_perdidos/1/edit
  def edit
  end

  # POST /animal_perdidos
  # POST /animal_perdidos.json
  def create
    @animal_perdido = AnimalPerdido.new(animal_perdido_params)

    respond_to do |format|
      if @animal_perdido.save
        format.html { redirect_to @animal_perdido, notice: 'Animal perdido was successfully created.' }
        format.json { render :show, status: :created, location: @animal_perdido }
      else
        format.html { render :new }
        format.json { render json: @animal_perdido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_perdidos/1
  # PATCH/PUT /animal_perdidos/1.json
  def update
    respond_to do |format|
      if @animal_perdido.update(animal_perdido_params)
        format.html { redirect_to @animal_perdido, notice: 'Animal perdido was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_perdido }
      else
        format.html { render :edit }
        format.json { render json: @animal_perdido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_perdidos/1
  # DELETE /animal_perdidos/1.json
  def destroy
    @animal_perdido.destroy
    respond_to do |format|
      format.html { redirect_to animal_perdidos_url, notice: 'Animal perdido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_perdido
      @animal_perdido = AnimalPerdido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_perdido_params
      params.require(:animal_perdido).permit(:specie, :sex, :founddate, :foundplace, :contact, :ps)
    end
end
