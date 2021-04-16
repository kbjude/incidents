class IncidentworkflowsController < ApplicationController
  before_action :set_incidentworkflow, only: [:show, :edit, :update, :destroy]

  # GET /incidentworkflows
  # GET /incidentworkflows.json
  def index
    @incidentworkflows = Incidentworkflow.all
  end

  # GET /incidentworkflows/1
  # GET /incidentworkflows/1.json
  def show
  end

  # GET /incidentworkflows/new
  def new
    @incidentworkflow = Incidentworkflow.new
  end

  # GET /incidentworkflows/1/edit
  def edit
  end

  # POST /incidentworkflows
  # POST /incidentworkflows.json
  def create
    @incidentworkflow = Incidentworkflow.new(incidentworkflow_params)

    respond_to do |format|
      if @incidentworkflow.save
        format.html { redirect_to @incidentworkflow, notice: 'Incidentworkflow was successfully created.' }
        format.json { render :show, status: :created, location: @incidentworkflow }
      else
        format.html { render :new }
        format.json { render json: @incidentworkflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentworkflows/1
  # PATCH/PUT /incidentworkflows/1.json
  def update
    respond_to do |format|
      if @incidentworkflow.update(incidentworkflow_params)
        format.html { redirect_to @incidentworkflow, notice: 'Incidentworkflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentworkflow }
      else
        format.html { render :edit }
        format.json { render json: @incidentworkflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentworkflows/1
  # DELETE /incidentworkflows/1.json
  def destroy
    @incidentworkflow.destroy
    respond_to do |format|
      format.html { redirect_to incidentworkflows_url, notice: 'Incidentworkflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentworkflow
      @incidentworkflow = Incidentworkflow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentworkflow_params
      params.require(:incidentworkflow).permit(:incident_id, :workflowtemplate_id)
    end
end
