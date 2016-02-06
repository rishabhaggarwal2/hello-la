json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :title, :short_desc, :long_desc
  json.url attraction_url(attraction, format: :json)
end
