json.array!(@legs) do |leg|
  json.extract! leg, :id
  json.url leg_url(leg, format: :json)
end
