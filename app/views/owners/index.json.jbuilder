json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :phone, :email
  json.url owner_url(owner, format: :json)
end
