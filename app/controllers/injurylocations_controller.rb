class InjurylocationsController < ApplicationController
  before_action :set_injurylocation, only: [:show, :edit, :update, :destroy]

  # GET /injurylocations
  # GET /injurylocations.json
  def index
    @injurylocations = Injurylocation.all
    @injurylocation = Injurylocation.new
  end

  # GET /injurylocations/1
  # GET /injurylocations/1.json
  def show
  end

  # GET /injurylocations/new
  def new
    @injurylocation = Injurylocation.new
  end

  # GET /injurylocations/1/edit
  def edit
  end

  # POST /injurylocations
  # POST /injurylocations.json
  def create
    @injurylocation = Injurylocation.new(injurylocation_params)

    respond_to do |format|
      if @injurylocation.save
        format.html { redirect_to injurylocations_path, notice: 'Injurylocation was successfully created.' }
        format.json { render :show, status: :created, location: @injurylocation }
      else
        format.html { render :new }
        format.json { render json: @injurylocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /injurylocations/1
  # PATCH/PUT /injurylocations/1.json
  def update
    respond_to do |format|
      if @injurylocation.update(injurylocation_params)
        format.html { redirect_to @injurylocation, notice: 'Injurylocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @injurylocation }
      else
        format.html { render :edit }
        format.json { render json: @injurylocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /injurylocations/1
  # DELETE /injurylocations/1.json
  def destroy
    @injurylocation.destroy
    respond_to do |format|
      format.html { redirect_to injurylocations_url, notice: 'Injurylocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_injurylocation
      @injurylocation = Injurylocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def injurylocation_params
      params.require(:injurylocation).permit(:name, :description)
    end
end
