class IncidentcategoriesController < ApplicationController
  before_action :set_incidentcategory, only: [:show, :edit, :update, :destroy]


  # GET /incidentcategories
  # GET /incidentcategories.json
  def index
    @incidentcategories = Incidentcategory.all
    @incidentcategory = Incidentcategory.new
  end

  # GET /incidentcategories/1
  # GET /incidentcategories/1.json
  def show
    @incidentsubcategory = Incidentsubcategory.new
    @incidentsubcategory.incidentcategory_id = params[:id]
    @incidentsubcategories = Incidentsubcategory.where(incidentcategory_id: params[:id]).order("name")
  end

  # GET /incidentcategories/new
  def new
    @incidentcategory = Incidentcategory.new
  end

  # GET /incidentcategories/1/edit
  def edit
  end

  # POST /incidentcategories
  # POST /incidentcategories.json
  def create
    @incidentcategory = Incidentcategory.new(incidentcategory_params)

    respond_to do |format|
      if @incidentcategory.save
        format.html { redirect_to incidentcategories_path, notice: 'Incidentcategory was successfully created.' }
        format.json { render :show, status: :created, location: @incidentcategory }
      else
        format.html { render :new }
        format.json { render json: @incidentcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentcategories/1
  # PATCH/PUT /incidentcategories/1.json
  def update
    respond_to do |format|
      if @incidentcategory.update(incidentcategory_params)
        format.html { redirect_to @incidentcategory, notice: 'Incidentcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @incidentcategory }
      else
        format.html { render :edit }
        format.json { render json: @incidentcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentcategories/1
  # DELETE /incidentcategories/1.json
  def destroy
    @incidentcategory.destroy
    respond_to do |format|
      format.html { redirect_to incidentcategories_url, notice: 'Incidentcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
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
