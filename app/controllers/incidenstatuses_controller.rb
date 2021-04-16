class IncidenstatusesController < ApplicationController
  before_action :set_incidenstatus, only: [:show, :edit, :update, :destroy]

  # GET /incidenstatuses
  # GET /incidenstatuses.json
  def index
    @incidenstatuses = Incidenstatus.all
  end

  # GET /incidenstatuses/1
  # GET /incidenstatuses/1.json
  def show
  end

  # GET /incidenstatuses/new
  def new
    @incidenstatus = Incidenstatus.new
  end

  # GET /incidenstatuses/1/edit
  def edit
  end

  # POST /incidenstatuses
  # POST /incidenstatuses.json
  def create
    @incidenstatus = Incidenstatus.new(incidenstatus_params)

    respond_to do |format|
      if @incidenstatus.save
        format.html { redirect_to @incidenstatus, notice: 'Incidenstatus was successfully created.' }
        format.json { render :show, status: :created, location: @incidenstatus }
      else
        format.html { render :new }
        format.json { render json: @incidenstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidenstatuses/1
  # PATCH/PUT /incidenstatuses/1.json
  def update
    respond_to do |format|
      if @incidenstatus.update(incidenstatus_params)
        format.html { redirect_to @incidenstatus, notice: 'Incidenstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidenstatus }
      else
        format.html { render :edit }
        format.json { render json: @incidenstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidenstatuses/1
  # DELETE /incidenstatuses/1.json
  def destroy
    @incidenstatus.destroy
    respond_to do |format|
      format.html { redirect_to incidenstatuses_url, notice: 'Incidenstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidenstatus
      @incidenstatus = Incidenstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidenstatus_params
      params.require(:incidenstatus).permit(:status)
    end
end
