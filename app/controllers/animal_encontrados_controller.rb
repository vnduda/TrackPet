class AnimalEncontradosController < ApplicationController
  before_action :set_animal_encontrado, only: [:show, :edit, :update, :destroy]

  # GET /animal_encontrados
  # GET /animal_encontrados.json
  def index
    @animal_encontrados = AnimalEncontrado.all
  end

  # GET /animal_encontrados/1
  # GET /animal_encontrados/1.json
  def show
  end

  # GET /animal_encontrados/new
  def new
    @animal_encontrado = AnimalEncontrado.new
  end

  # GET /animal_encontrados/1/edit
  def edit
  end

  # POST /animal_encontrados
  # POST /animal_encontrados.json
  def create
    @animal_encontrado = AnimalEncontrado.new(animal_encontrado_params)

    respond_to do |format|
      if @animal_encontrado.save
        format.html { redirect_to @animal_encontrado, notice: 'Animal encontrado was successfully created.' }
        format.json { render :show, status: :created, location: @animal_encontrado }
      else
        format.html { render :new }
        format.json { render json: @animal_encontrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_encontrados/1
  # PATCH/PUT /animal_encontrados/1.json
  def update
    respond_to do |format|
      if @animal_encontrado.update(animal_encontrado_params)
        format.html { redirect_to @animal_encontrado, notice: 'Animal encontrado was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_encontrado }
      else
        format.html { render :edit }
        format.json { render json: @animal_encontrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_encontrados/1
  # DELETE /animal_encontrados/1.json
  def destroy
    @animal_encontrado.destroy
    respond_to do |format|
      format.html { redirect_to animal_encontrados_url, notice: 'Animal encontrado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_encontrado
      @animal_encontrado = AnimalEncontrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_encontrado_params
      params.require(:animal_encontrado).permit(:specie, :sex, :founddate, :foundplace, :contact, :ps)
    end
end
