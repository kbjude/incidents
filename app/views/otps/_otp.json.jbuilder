json.extract! otp, :id, :user_id, :code, :created_at, :updated_at
json.url otp_url(otp, format: :json)
