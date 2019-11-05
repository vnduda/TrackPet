class LostAnimalsController < ApplicationController
  before_action :set_lost_animal, only: [:show, :edit, :update, :destroy]

  # GET /lost_animals
  # GET /lost_animals.json
  def index
    @lost_animals = LostAnimal.all
  end

  # GET /lost_animals/1
  # GET /lost_animals/1.json
  def show
  end

  # GET /lost_animals/new
  def new
    @lost_animal = LostAnimal.new
  end

  # GET /lost_animals/1/edit
  def edit
  end

  # POST /lost_animals
  # POST /lost_animals.json
  def create
    @lost_animal = LostAnimal.new(lost_animal_params)

    respond_to do |format|
      if @lost_animal.save
        format.html { redirect_to @lost_animal, notice: 'Lost animal was successfully created.' }
        format.json { render :show, status: :created, location: @lost_animal }
      else
        format.html { render :new }
        format.json { render json: @lost_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_animals/1
  # PATCH/PUT /lost_animals/1.json
  def update
    respond_to do |format|
      if @lost_animal.update(lost_animal_params)
        format.html { redirect_to @lost_animal, notice: 'Lost animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @lost_animal }
      else
        format.html { render :edit }
        format.json { render json: @lost_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_animals/1
  # DELETE /lost_animals/1.json
  def destroy
    @lost_animal.destroy
    respond_to do |format|
      format.html { redirect_to lost_animals_url, notice: 'Lost animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_animal
      @lost_animal = LostAnimal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_animal_params
      params.require(:lost_animal).permit(:image, :species, :sex, :lostdate, :lostplace, :contact, :ps, :User_name)
    end
end
