json.extract! victim, :id, :incident_id, :name, :contact, :remark, :role, :employee, :address, :email, :supervisor, :created_at, :updated_at
json.url victim_url(victim, format: :json)
