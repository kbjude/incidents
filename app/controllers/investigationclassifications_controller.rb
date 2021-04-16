class InvestigationclassificationsController < ApplicationController
  before_action :set_investigationclassification, only: [:show, :edit, :update, :destroy]

  # GET /investigationclassifications
  # GET /investigationclassifications.json
  def index
    @investigationclassifications = Investigationclassification.all
  end

  # GET /investigationclassifications/1
  # GET /investigationclassifications/1.json
  def show
  end

  # GET /investigationclassifications/new
  def new
    @investigationclassification = Investigationclassification.new
  end

  # GET /investigationclassifications/1/edit
  def edit
  end

  # POST /investigationclassifications
  # POST /investigationclassifications.json
  def create
    @investigationclassification = Investigationclassification.new(investigationclassification_params)

    respond_to do |format|
      if @investigationclassification.save
        format.html { redirect_to @investigationclassification.investigation, notice: 'Investigationclassification was successfully created.' }
        format.json { render :show, status: :created, location: @investigationclassification }
      else
        format.html { render :new }
        format.json { render json: @investigationclassification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationclassifications/1
  # PATCH/PUT /investigationclassifications/1.json
  def update
    respond_to do |format|
      if @investigationclassification.update(investigationclassification_params)
        format.html { redirect_to @investigationclassification.investigation, notice: 'Investigationclassification was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationclassification }
      else
        format.html { render :edit }
        format.json { render json: @investigationclassification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationclassifications/1
  # DELETE /investigationclassifications/1.json
  def destroy
    @investigationclassification.destroy
    respond_to do |format|
      format.html { redirect_to investigationclassifications_url, notice: 'Investigationclassification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationclassification
      @investigationclassification = Investigationclassification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationclassification_params
      params.require(:investigationclassification).permit(:investigation_id, :subclassification_id)
    end
end
