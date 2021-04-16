class ActionRequiredsController < ApplicationController
  before_action :set_action_required, only: [:show, :edit, :update, :destroy]

  # GET /action_requireds
  # GET /action_requireds.json
  def index
    @action_requireds = ActionRequired.all
  end

  # GET /action_requireds/1
  # GET /action_requireds/1.json
  def show
  end

  # GET /action_requireds/new
  def new
    @action_required = ActionRequired.new
  end

  # GET /action_requireds/1/edit
  def edit
  end

  # POST /action_requireds
  # POST /action_requireds.json
  def create
    @action_required = ActionRequired.new(action_required_params)

    respond_to do |format|
      if @action_required.save
        format.html { redirect_to @action_required, notice: 'Action required was successfully created.' }
        format.json { render :show, status: :created, location: @action_required }
      else
        format.html { render :new }
        format.json { render json: @action_required.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_requireds/1
  # PATCH/PUT /action_requireds/1.json
  def update
    respond_to do |format|
      if @action_required.update(action_required_params)
        format.html { redirect_to @action_required, notice: 'Action required was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_required }
      else
        format.html { render :edit }
        format.json { render json: @action_required.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_requireds/1
  # DELETE /action_requireds/1.json
  def destroy
    @action_required.destroy
    respond_to do |format|
      format.html { redirect_to action_requireds_url, notice: 'Action required was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_required
      @action_required = ActionRequired.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def action_required_params
      params.require(:action_required).permit(:datetime, :name, :phone, :address, :category, :ref_number, :remarks)
    end
end
