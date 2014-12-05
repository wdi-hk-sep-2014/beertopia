json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :description, :phone, :address, :lat, :lng
  json.url brewery_url(brewery, format: :json)
end
