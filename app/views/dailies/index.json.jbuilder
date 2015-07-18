json.array!(@dailies) do |daily|
  json.extract! daily, :id, :title, :content
  json.url daily_url(daily, format: :json)
end
