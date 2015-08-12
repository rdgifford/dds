json.array!(@dispatchers) do |dispatcher|
  json.extract! dispatcher, :id, :name
  json.url dispatcher_url(dispatcher, format: :json)
end
