class AnimalFoundsController < ApplicationController
  before_action :set_animal_found, only: [:show, :edit, :update, :destroy]

  # GET /animal_founds
  # GET /animal_founds.json
  def index
    @animal_founds = AnimalFound.all
  end

  # GET /animal_founds/1
  # GET /animal_founds/1.json
  def show
  end

  # GET /animal_founds/new
  def new
    @animal_found = AnimalFound.new
  end

  # GET /animal_founds/1/edit
  def edit
  end

  # POST /animal_founds
  # POST /animal_founds.json
  def create
    @animal_found = AnimalFound.new(animal_found_params)

    respond_to do |format|
      if @animal_found.save
        format.html { redirect_to @animal_found, notice: 'Animal found was successfully created.' }
        format.json { render :show, status: :created, location: @animal_found }
      else
        format.html { render :new }
        format.json { render json: @animal_found.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_founds/1
  # PATCH/PUT /animal_founds/1.json
  def update
    respond_to do |format|
      if @animal_found.update(animal_found_params)
        format.html { redirect_to @animal_found, notice: 'Animal found was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_found }
      else
        format.html { render :edit }
        format.json { render json: @animal_found.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_founds/1
  # DELETE /animal_founds/1.json
  def destroy
    @animal_found.destroy
    respond_to do |format|
      format.html { redirect_to animal_founds_url, notice: 'Animal found was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_found
      @animal_found = AnimalFound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_found_params
      params.require(:animal_found).permit(:specie, :sex, :founddate, :foundplace, :contact, :ps)
    end
end
