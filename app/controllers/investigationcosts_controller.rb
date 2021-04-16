class InvestigationcostsController < ApplicationController
  before_action :set_investigationcost, only: [:show, :edit, :update, :destroy]

  # GET /investigationcosts
  # GET /investigationcosts.json
  def index
    @investigationcosts = Investigationcost.all
  end

  # GET /investigationcosts/1
  # GET /investigationcosts/1.json
  def show
  end

  # GET /investigationcosts/new
  def new
    @investigationcost = Investigationcost.new
  end

  # GET /investigationcosts/1/edit
  def edit
  end

  # POST /investigationcosts
  # POST /investigationcosts.json
  def create
    @investigationcost = Investigationcost.new(investigationcost_params)

    respond_to do |format|
      if @investigationcost.save
        format.html { redirect_to @investigationcost.investigation, notice: 'Investigationcost was successfully created.' }
        format.json { render :show, status: :created, location: @investigationcost }
      else
        format.html { render :new }
        format.json { render json: @investigationcost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigationcosts/1
  # PATCH/PUT /investigationcosts/1.json
  def update
    respond_to do |format|
      if @investigationcost.update(investigationcost_params)
        format.html { redirect_to @investigationcost.investigation, notice: 'Investigationcost was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigationcost }
      else
        format.html { render :edit }
        format.json { render json: @investigationcost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigationcosts/1
  # DELETE /investigationcosts/1.json
  def destroy
    @investigationcost.destroy
    respond_to do |format|
      format.html { redirect_to investigationcosts_url, notice: 'Investigationcost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigationcost
      @investigationcost = Investigationcost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investigationcost_params
      params.require(:investigationcost).permit(:investigation_id, :item, :amount, :currency)
    end
end
