json.extract! spot, :id, :title, :description, :address, :latitude, :longitude, :image, :created_at, :updated_at
json.url spot_url(spot, format: :json)
