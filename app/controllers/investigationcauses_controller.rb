class InvestigationcausesController < ApplicationController
  before_action :set_investigationcause, only: [:show, :edit, :update, :destroy]

  # GET /investigationcauses
  # GET /investigationcauses.json
  def index
    @investigationcauses = Investigationcause.all
  end

  # GET /investigationcauses/1
  # GET /investigationcauses/1.json
  def show
  end

  # GET /investigationcauses/new
  def new
    @investigationcause = Investigationcause.new
  end

  # GET /investigationcauses/1/edit
  def edit
  end

  # POST /investigationcauses
  # POST /investigationcauses.json
  def create
    @investigationcause = Investigationcause.new(investigationcause_params)

    respond_to do |format|
      if @investigationcause.save
        format.html { redirect_to @investigationcause.investigation, notice: 'Investigationcause was successfully created.' }
        format.json { render :show, status: :created, location: @investigationcause }
      else
        format.html { render :new }
        format.json { render json: @investigationcause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationcauses/1
  # PATCH/PUT /investigationcauses/1.json
  def update
    respond_to do |format|
      if @investigationcause.update(investigationcause_params)
        format.html { redirect_to @investigationcause.investigation, notice: 'Investigationcause was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationcause }
      else
        format.html { render :edit }
        format.json { render json: @investigationcause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationcauses/1
  # DELETE /investigationcauses/1.json
  def destroy
    @investigationcause.destroy
    respond_to do |format|
      format.html { redirect_to investigationcauses_url, notice: 'Investigationcause was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationcause
      @investigationcause = Investigationcause.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationcause_params
      params.require(:investigationcause).permit(:investigation_id, :cause_id)
    end
end
