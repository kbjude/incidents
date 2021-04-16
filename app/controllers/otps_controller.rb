class OtpsController < ApplicationController
  before_action :set_otp, only: [:show, :edit, :update, :destroy]

  # GET /otps
  # GET /otps.json
  def index
    @otps = Otp.all
  end

  # GET /otps/1
  # GET /otps/1.json
  def show
  end

  # GET /otps/new
  def new
    @otp = Otp.new
  end

  # GET /otps/1/edit
  def edit
  end

  # POST /otps
  # POST /otps.json
  def create
    @otp = Otp.new(otp_params)

    respond_to do |format|
      if @otp.save
        format.html { redirect_to @otp, notice: 'Otp was successfully created.' }
        format.json { render :show, status: :created, location: @otp }
      else
        format.html { render :new }
        format.json { render json: @otp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otps/1
  # PATCH/PUT /otps/1.json
  def update
    respond_to do |format|
      if @otp.update(otp_params)
        format.html { redirect_to @otp, notice: 'Otp was successfully updated.' }
        format.json { render :show, status: :ok, location: @otp }
      else
        format.html { render :edit }
        format.json { render json: @otp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otps/1
  # DELETE /otps/1.json
  def destroy
    @otp.destroy
    respond_to do |format|
      format.html { redirect_to otps_url, notice: 'Otp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otp
      @otp = Otp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def otp_params
      params.require(:otp).permit(:user_id, :code)
    end
end
