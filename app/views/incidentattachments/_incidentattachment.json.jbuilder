json.extract! incidentattachment, :id, :incident, :filepath, :name, :created_at, :updated_at
json.url incidentattachment_url(incidentattachment, format: :json)
