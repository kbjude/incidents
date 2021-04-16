require 'json'
class Api::V1::IncidentfollowupsController < ApplicationController
  before_action :set_incidentfollowup, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  respond_to :json

  # GET /incidentfollowups
  # GET /incidentfollowups.json
  def index
    ids = params[:incident_ids].split(",")
    @incidentfollowups = Incidentfollowup.where("incident_id IN (?)",ids).order("id")
    json_response(@incidentfollowups)
  end

  # GET /incidentfollowups/1
  # GET /incidentfollowups/1.json
  def show
  end

  # GET /incidentfollowups/new
  def new
    @incidentfollowup = Incidentfollowup.new
    # @incident = Incident.incidentcategory.new
  end

  # GET /incidentfollowups/1/edit
  def edit
  end

  # POST /incidentfollowups
  # POST /incidentfollowups.json
  def create
    @incidentfollowup = Incidentfollowup.new(incidentfollowup_params)
    incident = @incidentfollowup.incident
    incident.status = @incidentfollowup.status
    incident.save
    respond_to do |format|
      if @incidentfollowup.save
        format.html { redirect_to @incidentfollowup.incident, notice: 'Incidentfollowup was successfully created.' }
        format.json { render :show, status: :created, location: @incidentfollowup }
      else
        format.html { render :new }
        format.json { render json: @incidentfollowup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentfollowups/1
  # PATCH/PUT /incidentfollowups/1.json
  def update
    respond_to do |format|
      if @incidentfollowup.update(incidentfollowup_params)
        format.html { redirect_to @incidentfollowup, notice: 'Incidentfollowup was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentfollowup }
      else
        format.html { render :edit }
        format.json { render json: @incidentfollowup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentfollowups/1
  # DELETE /incidentfollowups/1.json
  def destroy
    @incidentfollowup.destroy
    respond_to do |format|
      format.html { redirect_to incidentfollowups_url, notice: 'Incidentfollowup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentfollowup
      @incidentfollowup = Incidentfollowup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentfollowup_params
      params.require(:incidentfollowup).permit(:incident_id, :status, :comment, :date)
    end
end
