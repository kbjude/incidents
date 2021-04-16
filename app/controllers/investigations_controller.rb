class InvestigationsController < ApplicationController
  before_action :set_investigation, only: [:show, :edit, :update, :destroy]

  # GET /investigations
  # GET /investigations.json
  def index
    @investigations = Investigation.all
  end

  # GET /investigations/1
  # GET /investigations/1.json
  def show
    @investigationinjurytype = Investigationinjurytype.new
    @investigationinjurytype.investigation_id = params[:id]
    @investigationinjurytypes = Investigationinjurytype.where(investigation_id: params[:id])

    @investigationinjurylocation = Investigationinjurylocation.new
    @investigationinjurylocation.investigation_id = params[:id]
    @investigationinjurylocations = Investigationinjurylocation.where(investigation_id: params[:id])

    @investigationcost = Investigationcost.new
    @investigationcost.investigation_id = params[:id]
    @investigationcosts = Investigationcost.where(investigation_id: params[:id])

    @investigationclassification = Investigationclassification.new
    @investigationclassification.investigation_id = params[:id]
    @investigationclassifications = {}
    Classification.all.each do |c|
      @investigationclassifications[c] = Investigationclassification.where("investigation_id = ? AND subclassification_id IN (?)", params[:id],c.subclassifications.map(&:id))
    end

    @investigationaction = Investigationaction.new
    @investigationaction.investigation_id = params[:id]
    @investigationactions = Investigationaction.where(investigation_id: params[:id])

    @investigationequipment = Investigationequipment.new
    @investigationequipment.investigation_id = params[:id]
    @investigationequipments = Investigationequipment.where(investigation_id: params[:id])

    @investigationcause = Investigationcause.new
    @investigationcause.investigation_id = params[:id]
    @investigationcauses = {}
    Cause.all.map(&:category).uniq.each do |c|
      ids = Cause.where(category: c).map(&:id)
      causes = Investigationcause.where("cause_id IN (?) AND investigation_id = ?",ids,params[:id])
      @investigationcauses[c] = causes
    end

  end

  # GET /investigations/new
  def new
    @investigation = Investigation.new
    if params[:incident_id]
      @incident = Incident.find(params[:incident_id])
      @investigation.incident_id = params[:incident_id]
    end
    @investigation.user_id = current_user.id
  end

  # GET /investigations/1/edit
  def edit
  end

  # POST /investigations
  # POST /investigations.json
  def create
    @investigation = Investigation.new(investigation_params)

    respond_to do |format|
      if @investigation.save
        format.html { redirect_to @investigation, notice: 'Investigation was successfully created.' }
        format.json { render :show, status: :created, location: @investigation }
      else
        format.html { render :new }
        format.json { render json: @investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigations/1
  # PATCH/PUT /investigations/1.json
  def update
    respond_to do |format|
      if @investigation.update(investigation_params)
        format.html { redirect_to @investigation, notice: 'Investigation was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigation }
      else
        format.html { render :edit }
        format.json { render json: @investigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigations/1
  # DELETE /investigations/1.json
  def destroy
    @investigation.destroy
    respond_to do |format|
      format.html { redirect_to investigations_url, notice: 'Investigation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigation
      @investigation = Investigation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigation_params
      params.require(:investigation).permit(:incident_id, :user_id, :report_number, :date, :department_id, :status, :reportable_to_legal)
    end
end
