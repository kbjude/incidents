json.extract! incidentstatus, :id, :status, :incident_id, :created_at, :updated_at
json.url incidentstatus_url(incidentstatus, format: :json)
