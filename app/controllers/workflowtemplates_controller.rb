class WorkflowtemplatesController < ApplicationController
  before_action :set_workflowtemplate, only: [:show, :edit, :update, :destroy]

  # GET /workflowtemplates
  # GET /workflowtemplates.json
  def index
    @workflowtemplates = Workflowtemplate.all
  end

  # GET /workflowtemplates/1
  # GET /workflowtemplates/1.json
  def show
  end

  # GET /workflowtemplates/new
  def new
    @workflowtemplate = Workflowtemplate.new
  end

  # GET /workflowtemplates/1/edit
  def edit
  end

  # POST /workflowtemplates
  # POST /workflowtemplates.json
  def create
    @workflowtemplate = Workflowtemplate.new(workflowtemplate_params)

    respond_to do |format|
      if @workflowtemplate.save
        format.html { redirect_to @workflowtemplate, notice: 'Workflowtemplate was successfully created.' }
        format.json { render :show, status: :created, location: @workflowtemplate }
      else
        format.html { render :new }
        format.json { render json: @workflowtemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workflowtemplates/1
  # PATCH/PUT /workflowtemplates/1.json
  def update
    respond_to do |format|
      if @workflowtemplate.update(workflowtemplate_params)
        format.html { redirect_to @workflowtemplate, notice: 'Workflowtemplate was successfully updated.' }
        format.json { render :show, status: :ok, location: @workflowtemplate }
      else
        format.html { render :edit }
        format.json { render json: @workflowtemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workflowtemplates/1
  # DELETE /workflowtemplates/1.json
  def destroy
    @workflowtemplate.destroy
    respond_to do |format|
      format.html { redirect_to workflowtemplates_url, notice: 'Workflowtemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflowtemplate
      @workflowtemplate = Workflowtemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workflowtemplate_params
      params.require(:workflowtemplate).permit(:title, :description, :responsible_party)
    end
end
