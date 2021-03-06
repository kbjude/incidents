require 'json'
class Api::V1::IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :createjson]
  skip_before_action :verify_authenticity_token
  respond_to :json
  # GET /incidents
  # GET /incidents.json
  def index
    @date_method = (params[:search].present? ? params[:search][:date_method] : 'date_time').to_sym
    @start = selected_date(:date_time)
    @end = selected_date(:date_time)

    @incidents_select = params[:search].present? ? Incident.where(@date_method => @start..@end) : Incident.none

    @incidents = Incident.all
    json_response(@incidents)

    @location = get_city
  end

  def show
    json_response(@incident)
  end

  # POST /incidents
  # POST /incidents.json
  def createjson
    ignore = ["id", "updated", "createdAt","deleted"]
    incident_params = params[:incident].except(*ignore)
    @incident = Incident.new(injured_parts: incident_params[:injuredParts], description: incident_params[:description], activity: incident_params[:activity], address: incident_params[:location], cause: incident_params[:cause], prevention: incident_params[:prevention])
    @incident.date_time = params[:dateTime]
    @incident.incidentcategory_id = params[:incidentCategory][:id]
    @incident.status = "pending"
    if @user
      @incident.user_id = @user.id
    end
    if @incident.save
      params[:witnesses].each do |record|
        victim = Witness.new(name: record[:name], remark: record[:remark], contact: record[:contact])
        victim.incident_id = @incident.id
        victim.save
      end

      params[:victims].each do |record|
        offender = Victim.new(name: record[:name], address: record[:address], remark: record[:remark], contact: record[:contact], role: record[:role], employee: record[:employee], supervisor: record[:supervisor], email: record[:email])
        offender.incident_id = @incident.id
      end
      new_incident_email(@incident)
      json_response(@incident)
    else
      render json: @incident.errors, status: :unprocessable_entity
    end
  end

  # POST /incidents
  # POST /incidents.json
  def create
    Rails.logger.info "=========================="
    Rails.logger.info request.raw_post
    Rails.logger.info "=========================="
    data = JSON.parse(request.raw_post).symbolize_keys
    ignore = ["victims", "offenders", "attachments"]
    incident_params = data[:incident]
    incident_params = incident_params.except(*ignore)
    @incident = Incident.new(incident_params)
    @incident.status = "pending"
    @incident.offender = "N/A"
    if @user
      @incident.user_id = @user.id
    end
    if @incident.save
      data[:incident]["victims"].each do |record|
        victim = Victim.new(record)
        victim.incident_id = @incident.id
        victim.save
      end
      data[:incident]["offenders"].each do |record|
        offender = Offender.new(record)
        offender.incident_id = @incident.id
        oc = Offendercategory.find_by_id(offender.offendercategory_id)
        if !oc
          Offendercategory.create(name: "General",id: offender.offendercategory_id)
        end
        offender.save
      end
      json_response(@incident)
    else
      render json: @incident.errors, status: :unprocessable_entity
    end
  end

  def new_incident_email(incident)
    begin
      approver_name = "user"
      dest_email = ""
      setting = Setting.where(key: "notify_email").first
      if setting
        dest_email = setting.value
        @sendemail = Sendemail.new
        path = "#{request.protocol}#{request.host_with_port}"
        filename = "incident_#{incident.id}"
        tenant = nil
        subject = "New incident - #{incident.id}"
        message = "Dear team<br/>A new incident has been reported. <br/>"
        message += "<hr/>ID: <a href='"+path+"/incident/" + incident.id.to_s + "'>#{incident.id}</a>"
        message += "<hr/>Date: " + incident.date.strftime("%d-%m-%Y")
        message += "<hr/>Reported By: " + incident.user.full_name
        att = Hash.new
        from = "MOTIV INCIDENT <no-reply@devops.innovationvillage.co.ug"
        
        SendEmail.sendemail(dest_email,subject,message,from,att,tenant).deliver
      end
    rescue
      Rails.logger.info "========Problem sending email=============="
    end  
  end

  # PATCH/PUT /incidents/1
  # PATCH/PUT /incidents/1.json
  def update
      if @incident.update(incident_params)
        json_response(@incident)
      else
        render json: @incident.errors, status: :unprocessable_entity
      end
  end

  # DELETE /incidents/1
  # DELETE /incidents/1.json
  def destroy
    #@incident.destroy
    render json: {}, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    def set_user
      if request.headers["PHONE"]
        phone = "256" + request.headers["PHONE"][-9,9]
        @user = User.find_by_phone(phone)
        code = rand(10000..99999).to_s + "AZSX"
        if !@user
          email = phone + "@motivug.org"
          @user = User.create(email: email, name: email, phone: phone, password: code, role: "user")
        end
      end
    end
    
    def selected_date(symbol)
      params[:search].present? && params[:search][symbol].present? ? params[:search][symbol].to_date : Time.now.to_date
    end

    # Only allow a list of trusted parameters through.
    def incident_params
      params.require(:incident).permit(:incidentcategory, :date_time, :longtitude, :latitude, :address, :description, :status_id, :offender, :location_id, :attachment_ids, :offenders, :victims, :incidentcategory_id)
    end
end
