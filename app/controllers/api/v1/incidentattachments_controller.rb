class Api::V1::IncidentattachmentsController < ApplicationController
  before_action :set_incidentattachment, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /uploads
  def index
    @incidentattachments = Incidentattachment.all

    render json: @incidentattachments
  end

  # GET /uploads/1
  def show
    render json: @incidentattachment
  end

  # POST /uploads
  def create
    @incidentattachment = Incidentattachment.new
    @incidentattachment.attachment = params[:file]
    @incidentattachment.incident_id = params[:incident_id]
    @incidentattachment.filepath = "N/A"
    @incidentattachment.name = "N/A"

    if @incidentattachment.save
      json_response(@incidentattachment)
    else
      render :json => @incidentattachment.errors, :status => :unprocessable_entity
    end
  end

  # PATCH/PUT /uploads/1
  def update
    if @incidentattachment.update(incidentattachment_params)
      render json: @incidentattachment
    else
      render json: @incidentattachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uploads/1
  def destroy
    #@incidentattachment.destroy
    render json: {}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentattachment
      @incidentattachment = Incidentattachment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def incidentattachment_params
       params.permit(:attachment)
    end
end
