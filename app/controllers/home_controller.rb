class HomeController < ApplicationController
  # geocoded_by :address
  before_action :authenticate_user!

  def load_incidents
    @incidents_default = Gmaps4rails.build_markers(Incident.all) do |incident, marker|
       marker.lat incident.latitude
       marker.lng incident.longitude
       info = "<a href='/incidents/" + incident.id.to_s + "'>Incident #" + incident.id.to_s + "</a><br/>"
       if incident.description
        info += incident.description + "<br/>"
        #marker.infowindow plot.description + '<br><br><b>Address:</b> ' + plot.address + '<br><br><b>Click here for details:</b> '
       end
       if incident.date_time
        info += incident.date_time.strftime("%d-%m-%Y")
       end
       marker.infowindow info
    end
  end
  def index
    @incidents = Incident.all.order("id desc")
    @users = User.all
  end
  
  private

  def set_user
    @user = User.find(params[:id])
  end
end
