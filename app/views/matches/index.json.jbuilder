json.array!(@matches) do |match|
  json.extract! match, :id, :type
  json.url match_url(match, format: :json)
end
