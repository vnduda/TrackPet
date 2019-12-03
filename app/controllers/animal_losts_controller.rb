# frozen_string_literal: true

# Classe controller para funcoes de animais perdidos.
class AnimalLostsController < ApplicationController
  before_action :set_animal_lost, only: %i[show edit update destroy]

  # GET /animal_losts
  # GET /animal_losts.json
  def index
    @animal_losts = AnimalLost.all
  end

  # GET /animal_losts/1
  # GET /animal_losts/1.json
  def show; end

  # GET /animal_losts/new
  def new
    @animal_lost = AnimalLost.new
  end

  # GET /animal_losts/1/edit
  def edit; end

  # POST /animal_losts
  # POST /animal_losts.json
  def create
    @animal_lost = AnimalLost.new(animal_lost_params)

    respond_to do |format|
      if @animal_lost.save
        format.html { redirect_to @animal_lost, notice: 'Animal lost was successfully created.' }
        format.json { render :show, status: :created, location: @animal_lost }
      else
        format.html { render :new }
        format.json { render json: @animal_lost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_losts/1
  # PATCH/PUT /animal_losts/1.json
  def update
    respond_to do |format|
      if @animal_lost.update(animal_lost_params)
        format.html { redirect_to @animal_lost, notice: 'Animal lost was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_lost }
      else
        format.html { render :edit }
        format.json { render json: @animal_lost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_losts/1
  # DELETE /animal_losts/1.json
  def destroy
    @animal_lost.destroy
    respond_to do |format|
      format.html { redirect_to animal_losts_url, notice: 'Animal lost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_animal_lost
    @animal_lost = AnimalLost.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def animal_lost_params
    params.require(:animal_lost).permit(:image, :name, :specie, :sex, :lostdate, :lostplace, :contact, :ps)
  end
end
