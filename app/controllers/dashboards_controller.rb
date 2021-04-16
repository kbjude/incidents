class DashboardsController < ApplicationController

  def load_incidents
    @incidents_default = Gmaps4rails.build_markers(Incident.all) do |plot, marker|
       marker.lat plot.latitude
       marker.lng plot.longitude
       marker.infowindow plot.description + plot.date_time.to_s + plot.address
    end

    def get_locations
      url = "https://maps.googleapis.com/maps/api/incident/nearbysearch/json?location=#{params[:latitude]},#{params[:longtitude]}&radius=500&key=AIzaSyAZTMDj776XfDB8XgQ0wgklOw2JLMuQdCw"
      http_call = open(url).read
      response = JSON.parse(http_call, {:symbolize_names => true})
      @locations = response[:results]
    end
    
  end
  # address = Incident.WithLatLng.fetch(latitude: :latitude + longitude :longitude)

  def index
    load_incidents
    incident = Incident.all
    @incidents = incident.count
    @status = incident.group(:status).count
    @monthly_incidents = incident.group_by_month(:created_at, format: "%b %Y").count
    @victim_by_age = Victim.group(:agegroup).count
    @offendercategory = Offendercategory.group(:name).count
    @followupsstatus = Incidentfollowup.group(:status).count
    @closedcase = incident.where.not(status: %w[Solved Resolved resolved solved]).count
    @opencases = incident.where(status: %w[Solved Resolved resolved solved]).count
    @dropped = incident.where(status: %w[Dropped dropped]).count
    @nooffenders = incident.where(offender: '').count
    @mostrecent = incident.group_by_week(:created_at, last: 4)
    @timeofday = incident.group_by_hour_of_day(:created_at, format: "%-l %P").count
    @address = incident.group(:address).count

    @tests = incident.each do |incident|
      @bearing = incident.latitude.to_s + ","+incident.longitude.to_s
      @incidentaddress = Geocoder.address(@bearing)
    end
    
    @city = request.location.city


    # @result = @location_picker.city
    # @incidents_address = incident.group_by_month(:address, last: 4).count
    # @reversed = address.full_street_address
  end
end