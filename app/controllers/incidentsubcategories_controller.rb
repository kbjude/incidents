class IncidentsubcategoriesController < ApplicationController
  before_action :set_incidentsubcategory, only: [:show, :edit, :update, :destroy]

  # GET /incidentsubcategories
  # GET /incidentsubcategories.json
  def index
    @incidentsubcategories = Incidentsubcategory.all
  end

  # GET /incidentsubcategories/1
  # GET /incidentsubcategories/1.json
  def show
  end

  # GET /incidentsubcategories/new
  def new
    @incidentsubcategory = Incidentsubcategory.new
  end

  # GET /incidentsubcategories/1/edit
  def edit
  end

  # POST /incidentsubcategories
  # POST /incidentsubcategories.json
  def create
    @incidentsubcategory = Incidentsubcategory.new(incidentsubcategory_params)

    respond_to do |format|
      if @incidentsubcategory.save
        format.html { redirect_to @incidentsubcategory.incidentcategory, notice: 'Incidentsubcategory was successfully created.' }
        format.json { render :show, status: :created, location: @incidentsubcategory }
      else
        format.html { render :new }
        format.json { render json: @incidentsubcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentsubcategories/1
  # PATCH/PUT /incidentsubcategories/1.json
  def update
    respond_to do |format|
      if @incidentsubcategory.update(incidentsubcategory_params)
        format.html { redirect_to @incidentsubcategory.incidentcategory, notice: 'Incidentsubcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentsubcategory }
      else
        format.html { render :edit }
        format.json { render json: @incidentsubcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentsubcategories/1
  # DELETE /incidentsubcategories/1.json
  def destroy
    incidentcategory = @incidentsubcategory.incidentcategory
    @incidentsubcategory.destroy
    respond_to do |format|
      format.html { redirect_to incidentcategory, notice: 'Incidentsubcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidentsubcategory
      @incidentsubcategory = Incidentsubcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incidentsubcategory_params
      params.require(:incidentsubcategory).permit(:incidentcategory_id, :name)
    end
end
