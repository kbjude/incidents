class InvestigationinjurytypesController < ApplicationController
  before_action :set_investigationinjurytype, only: [:show, :edit, :update, :destroy]

  # GET /investigationinjurytypes
  # GET /investigationinjurytypes.json
  def index
    @investigationinjurytypes = Investigationinjurytype.all
  end

  # GET /investigationinjurytypes/1
  # GET /investigationinjurytypes/1.json
  def show
  end

  # GET /investigationinjurytypes/new
  def new
    @investigationinjurytype = Investigationinjurytype.new
  end

  # GET /investigationinjurytypes/1/edit
  def edit
  end

  # POST /investigationinjurytypes
  # POST /investigationinjurytypes.json
  def create
    @investigationinjurytype = Investigationinjurytype.new(investigationinjurytype_params)

    respond_to do |format|
      if @investigationinjurytype.save
        format.html { redirect_to @investigationinjurytype.investigation, notice: 'Investigationinjurytype was successfully created.' }
        format.json { render :show, status: :created, location: @investigationinjurytype }
      else
        format.html { render :new }
        format.json { render json: @investigationinjurytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationinjurytypes/1
  # PATCH/PUT /investigationinjurytypes/1.json
  def update
    respond_to do |format|
      if @investigationinjurytype.update(investigationinjurytype_params)
        format.html { redirect_to @investigationinjurytype.investigation, notice: 'Investigationinjurytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationinjurytype }
      else
        format.html { render :edit }
        format.json { render json: @investigationinjurytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationinjurytypes/1
  # DELETE /investigationinjurytypes/1.json
  def destroy
    @investigationinjurytype.destroy
    respond_to do |format|
      format.html { redirect_to investigationinjurytypes_url, notice: 'Investigationinjurytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationinjurytype
      @investigationinjurytype = Investigationinjurytype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationinjurytype_params
      params.require(:investigationinjurytype).permit(:investigation_id, :injurytype_id)
    end
end
