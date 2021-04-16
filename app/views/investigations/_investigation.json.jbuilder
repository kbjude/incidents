json.extract! investigation, :id, :incident_id, :user_id, :report_number, :date, :department_id, :status, :reportable_to_legal, :created_at, :updated_at
json.url investigation_url(investigation, format: :json)
