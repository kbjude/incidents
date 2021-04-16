class Api::V1::IncidentcategoriesController < ApplicationController
  before_action :set_incidentcategory, only: [:show, :edit, :update, :destroy]

  # GET /incidentcategories
  # GET /incidentcategories.json
  def index
    @incidentcategories = Incidentcategory.all
    json_response(@incidentcategories)
  end

  # GET /incidentcategories/1
  # GET /incidentcategories/1.json
  def show
  end

  # POST /incidentcategories
  # POST /incidentcategories.json
  def create
    @incidentcategory = Incidentcategory.new(incidentcategory_params)

    if @incidentcategory.save
      json_response(@incidentcategory)
    else
      render json: @incidentcategory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /incidentcategories/1
  # PATCH/PUT /incidentcategories/1.json
  def update
    respond_to do |format|
      if @incidentcategory.update(incidentcategory_params)
        json_response(@incidentcategory)
      else
        render json: @incidentcategory.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /incidentcategories/1
  # DELETE /incidentcategories/1.json
  def destroy
    #@incidentcategory.destroy
    render json: {}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentcategory
      @incidentcategory = Incidentcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentcategory_params
      params.require(:incidentcategory).permit(:name)
    end
end
