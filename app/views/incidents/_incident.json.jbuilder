json.extract! incident, :id, :incidentcategory, :date_time, :longtitude, :latitude, :address, :description, :status, :offender, :created_at, :updated_at
json.url incident_url(incident, format: :json)
