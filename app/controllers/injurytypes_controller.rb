class InjurytypesController < ApplicationController
  before_action :set_injurytype, only: [:show, :edit, :update, :destroy]

  # GET /injurytypes
  # GET /injurytypes.json
  def index
    @injurytypes = Injurytype.all
    @injurytype = Injurytype.new
  end

  # GET /injurytypes/1
  # GET /injurytypes/1.json
  def show
  end

  # GET /injurytypes/new
  def new
    @injurytype = Injurytype.new
  end

  # GET /injurytypes/1/edit
  def edit
  end

  # POST /injurytypes
  # POST /injurytypes.json
  def create
    @injurytype = Injurytype.new(injurytype_params)

    respond_to do |format|
      if @injurytype.save
        format.html { redirect_to injurytypes_path, notice: 'Injurytype was successfully created.' }
        format.json { render :show, status: :created, location: @injurytype }
      else
        format.html { render :new }
        format.json { render json: @injurytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /injurytypes/1
  # PATCH/PUT /injurytypes/1.json
  def update
    respond_to do |format|
      if @injurytype.update(injurytype_params)
        format.html { redirect_to injurytypes_path, notice: 'Injurytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @injurytype }
      else
        format.html { render :edit }
        format.json { render json: @injurytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /injurytypes/1
  # DELETE /injurytypes/1.json
  def destroy
    @injurytype.destroy
    respond_to do |format|
      format.html { redirect_to injurytypes_url, notice: 'Injurytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_injurytype
      @injurytype = Injurytype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def injurytype_params
      params.require(:injurytype).permit(:name, :description)
    end
end
