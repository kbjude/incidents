class SubclassificationsController < ApplicationController
  before_action :set_subclassification, only: [:show, :edit, :update, :destroy]

  # GET /subclassifications
  # GET /subclassifications.json
  def index
    @subclassifications = Subclassification.all
  end

  # GET /subclassifications/1
  # GET /subclassifications/1.json
  def show
  end

  # GET /subclassifications/new
  def new
    @subclassification = Subclassification.new
  end

  # GET /subclassifications/1/edit
  def edit
  end

  # POST /subclassifications
  # POST /subclassifications.json
  def create
    @subclassification = Subclassification.new(subclassification_params)

    respond_to do |format|
      if @subclassification.save
        format.html { redirect_to @subclassification.classification, notice: 'Subclassification was successfully created.' }
        format.json { render :show, status: :created, location: @subclassification }
      else
        format.html { render :new }
        format.json { render json: @subclassification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subclassifications/1
  # PATCH/PUT /subclassifications/1.json
  def update
    respond_to do |format|
      if @subclassification.update(subclassification_params)
        format.html { redirect_to @subclassification.classification, notice: 'Subclassification was successfully updated.' }
        format.json { render :show, status: :ok, location: @subclassification }
      else
        format.html { render :edit }
        format.json { render json: @subclassification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subclassifications/1
  # DELETE /subclassifications/1.json
  def destroy
    @subclassification.destroy
    respond_to do |format|
      format.html { redirect_to subclassifications_url, notice: 'Subclassification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subclassification
      @subclassification = Subclassification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subclassification_params
      params.require(:subclassification).permit(:classification_id, :name, :description)
    end
end
