class IncidentsController < ApplicationController

  before_action :set_incident, only: [:show, :edit, :update, :destroy]


  # GET /incidents
  # GET /incidents.json
  def index
    # @incidents = Incident.all.order("id desc")
    @search = IncidentSearch.new(params[:search])
    @incidents = @search.scope.order('id desc')
    @incident = Incident.new
    @incidentcategory = Incidentcategory.all
    respond_to do |format|
      format.html
      format.csv { send_data @incidents.to_csv }
      format.xlsx { send_data @incidents.to_csv(col_sep: "\t") }
    end
    @city = request.location.city
  end

  # GET /incidents/1
  # GET /incidents/1.json
  def show
    @incidentfollowup = Incidentfollowup.new
    @incidentfollowup.incident_id = params[:id]
    @investigation = Investigation.where(incident_id: params[:id]).first

    @witness = Witness.new
    @witness.incident_id = params[:id]
    @witnesses = Witness.where(incident_id: params[:id]).order("id")

    @victim = Victim.new
    @victim.incident_id = params[:id]
    @victims = Victim.where(incident_id: params[:id]).order("id")

    @incidentattachment = Incidentattachment.new
    @incidentattachment.incident_id = params[:id]
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
    @incidentcategory = Incidentcategory.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident = Incident.new(incident_params)
    @incident.user = current_user

    respond_to do |format|
      if @incident.save
        format.html { redirect_to @incident, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render :new }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to @incident, notice: 'Incident was successfully updated.' }
        format.json { render :show, status: :ok, location: @incident }
      else
        format.html { render :edit }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to incidents_url, notice: 'Incident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incident_params
      params.require(:incident).permit(:incidentcategory_id, :date_time, :longtitude, :latitude, :address, :description, :status_id, :status, :activity, :injured_parts,:cause, :prevention)
    end
end
