class IncidentstatusesController < ApplicationController
  before_action :set_incidentstatus, only: [:show, :edit, :update, :destroy]

  # GET /incidentstatuses
  # GET /incidentstatuses.json
  def index
    @incidentstatuses = Incidentstatus.all
  end

  # GET /incidentstatuses/1
  # GET /incidentstatuses/1.json
  def show
  end

  # GET /incidentstatuses/new
  def new
    @incidentstatus = Incidentstatus.new
  end

  # GET /incidentstatuses/1/edit
  def edit
  end

  # POST /incidentstatuses
  # POST /incidentstatuses.json
  def create
    @incidentstatus = Incidentstatus.new(incidentstatus_params)

    respond_to do |format|
      if @incidentstatus.save
        format.html { redirect_to @incidentstatus, notice: 'Incidentstatus was successfully created.' }
        format.json { render :show, status: :created, location: @incidentstatus }
      else
        format.html { render :new }
        format.json { render json: @incidentstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentstatuses/1
  # PATCH/PUT /incidentstatuses/1.json
  def update
    respond_to do |format|
      if @incidentstatus.update(incidentstatus_params)
        format.html { redirect_to @incidentstatus, notice: 'Incidentstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentstatus }
      else
        format.html { render :edit }
        format.json { render json: @incidentstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentstatuses/1
  # DELETE /incidentstatuses/1.json
  def destroy
    @incidentstatus.destroy
    respond_to do |format|
      format.html { redirect_to incidentstatuses_url, notice: 'Incidentstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentstatus
      @incidentstatus = Incidentstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentstatus_params
      params.require(:incidentstatus).permit(:status, :incident_id)
    end
end
