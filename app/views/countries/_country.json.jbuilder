json.extract! country, :id, :name, :code, :boundingbox, :created_at, :updated_at
json.url country_url(country, format: :json)
