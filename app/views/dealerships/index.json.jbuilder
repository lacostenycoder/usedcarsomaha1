json.array!(@dealerships) do |dealership|
  json.extract! dealership, :id
  json.url dealership_url(dealership, format: :json)
end
