class InvestigationequipmentsController < ApplicationController
  before_action :set_investigationequipment, only: [:show, :edit, :update, :destroy]

  # GET /investigationequipments
  # GET /investigationequipments.json
  def index
    @investigationequipments = Investigationequipment.all
  end

  # GET /investigationequipments/1
  # GET /investigationequipments/1.json
  def show
  end

  # GET /investigationequipments/new
  def new
    @investigationequipment = Investigationequipment.new
  end

  # GET /investigationequipments/1/edit
  def edit
  end

  # POST /investigationequipments
  # POST /investigationequipments.json
  def create
    @investigationequipment = Investigationequipment.new(investigationequipment_params)

    respond_to do |format|
      if @investigationequipment.save
        format.html { redirect_to @investigationequipment.investigation, notice: 'Investigationequipment was successfully created.' }
        format.json { render :show, status: :created, location: @investigationequipment }
      else
        format.html { render :new }
        format.json { render json: @investigationequipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationequipments/1
  # PATCH/PUT /investigationequipments/1.json
  def update
    respond_to do |format|
      if @investigationequipment.update(investigationequipment_params)
        format.html { redirect_to @investigationequipment.investigation, notice: 'Investigationequipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationequipment }
      else
        format.html { render :edit }
        format.json { render json: @investigationequipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationequipments/1
  # DELETE /investigationequipments/1.json
  def destroy
    @investigationequipment.destroy
    respond_to do |format|
      format.html { redirect_to investigationequipments_url, notice: 'Investigationequipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationequipment
      @investigationequipment = Investigationequipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationequipment_params
      params.require(:investigationequipment).permit(:investigation_id, :equipment, :description)
    end
end
