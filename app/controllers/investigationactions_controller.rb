class InvestigationactionsController < ApplicationController
  before_action :set_investigationaction, only: [:show, :edit, :update, :destroy]

  # GET /investigationactions
  # GET /investigationactions.json
  def index
    @investigationactions = Investigationaction.all
  end

  # GET /investigationactions/1
  # GET /investigationactions/1.json
  def show
  end

  # GET /investigationactions/new
  def new
    @investigationaction = Investigationaction.new
  end

  # GET /investigationactions/1/edit
  def edit
  end

  # POST /investigationactions
  # POST /investigationactions.json
  def create
    @investigationaction = Investigationaction.new(investigationaction_params)

    respond_to do |format|
      if @investigationaction.save
        format.html { redirect_to @investigationaction.investigation, notice: 'Investigationaction was successfully created.' }
        format.json { render :show, status: :created, location: @investigationaction }
      else
        format.html { render :new }
        format.json { render json: @investigationaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationactions/1
  # PATCH/PUT /investigationactions/1.json
  def update
    respond_to do |format|
      if @investigationaction.update(investigationaction_params)
        format.html { redirect_to @investigationaction.investigation, notice: 'Investigationaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationaction }
      else
        format.html { render :edit }
        format.json { render json: @investigationaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationactions/1
  # DELETE /investigationactions/1.json
  def destroy
    @investigationaction.destroy
    respond_to do |format|
      format.html { redirect_to investigationactions_url, notice: 'Investigationaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationaction
      @investigationaction = Investigationaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationaction_params
      params.require(:investigationaction).permit(:investigation_id, :action, :resposibility, :target_date)
    end
end
