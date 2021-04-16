class InvestigationinjurylocationsController < ApplicationController
  before_action :set_investigationinjurylocation, only: [:show, :edit, :update, :destroy]

  # GET /investigationinjurylocations
  # GET /investigationinjurylocations.json
  def index
    @investigationinjurylocations = Investigationinjurylocation.all
  end

  # GET /investigationinjurylocations/1
  # GET /investigationinjurylocations/1.json
  def show
  end

  # GET /investigationinjurylocations/new
  def new
    @investigationinjurylocation = Investigationinjurylocation.new
  end

  # GET /investigationinjurylocations/1/edit
  def edit
  end

  # POST /investigationinjurylocations
  # POST /investigationinjurylocations.json
  def create
    @investigationinjurylocation = Investigationinjurylocation.new(investigationinjurylocation_params)

    respond_to do |format|
      if @investigationinjurylocation.save
        format.html { redirect_to @investigationinjurylocation.investigation, notice: 'Investigationinjurylocation was successfully created.' }
        format.json { render :show, status: :created, location: @investigationinjurylocation }
      else
        format.html { render :new }
        format.json { render json: @investigationinjurylocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationinjurylocations/1
  # PATCH/PUT /investigationinjurylocations/1.json
  def update
    respond_to do |format|
      if @investigationinjurylocation.update(investigationinjurylocation_params)
        format.html { redirect_to @investigationinjurylocation.investigation, notice: 'Investigationinjurylocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationinjurylocation }
      else
        format.html { render :edit }
        format.json { render json: @investigationinjurylocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationinjurylocations/1
  # DELETE /investigationinjurylocations/1.json
  def destroy
    @investigationinjurylocation.destroy
    respond_to do |format|
      format.html { redirect_to investigationinjurylocations_url, notice: 'Investigationinjurylocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationinjurylocation
      @investigationinjurylocation = Investigationinjurylocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationinjurylocation_params
      params.require(:investigationinjurylocation).permit(:investigation_id, :injurylocation_id)
    end
end
