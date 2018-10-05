json.extract! location, :id, :street_address, :postal_code, :city, :state_province, :country_id, :created_at, :updated_at
json.url location_url(location, format: :json)
