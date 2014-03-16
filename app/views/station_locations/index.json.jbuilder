json.array!(@station_locations) do |station_location|
  json.extract! station_location, :id, :name, :address1, :address2, :city, :state, :zip, :latitude, :longitude, :gmaps
  json.url station_location_url(station_location, format: :json)
end
