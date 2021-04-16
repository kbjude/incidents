class IncidentattachmentsController < ApplicationController
  before_action :set_incidentattachment, only: [:show, :edit, :update, :destroy]

  # GET /incidentattachments
  # GET /incidentattachments.json
  def index
    @incidentattachments = Incidentattachment.all
    @incident = Incident.all
  end

  # GET /incidentattachments/1
  # GET /incidentattachments/1.json
  def show
  end

  # GET /incidentattachments/new
  def new
    @incidentattachment = Incidentattachment.new
  end

  # GET /incidentattachments/1/edit
  def edit
  end

  # POST /incidentattachments
  # POST /incidentattachments.json
  def create
    @incidentattachment = Incidentattachment.new(incidentattachment_params)
    @incidentattachment.filepath = "N/A"

    respond_to do |format|
      if @incidentattachment.save
        format.html { redirect_to @incidentattachment, notice: 'Incidentattachment was successfully created.' }
        format.json { render :show, status: :created, location: @incidentattachment }
      else
        format.html { render :new }
        format.json { render json: @incidentattachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentattachments/1
  # PATCH/PUT /incidentattachments/1.json
  def update
    respond_to do |format|
      if @incidentattachment.update(incidentattachment_params)
        format.html { redirect_to @incidentattachment, notice: 'Incidentattachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentattachment }
      else
        format.html { render :edit }
        format.json { render json: @incidentattachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentattachments/1
  # DELETE /incidentattachments/1.json
  def destroy
    @incidentattachment.destroy
    respond_to do |format|
      format.html { redirect_to incidentattachments_url, notice: 'Incidentattachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentattachment
      @incidentattachment = Incidentattachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentattachment_params
      params.require(:incidentattachment).permit(:incident, :filepath, :name, :attachment, :incident_id)
    end
end
