json.array!(@stations) do |station|
  json.extract! station, :id, :name, :operational, :store_number, :cng_price, :deisel_price, :address1, :address2, :city, :state, :zip_code, :phone_number, :subscriber, :email, :website, :certification
  json.url station_url(station, format: :json)
end
