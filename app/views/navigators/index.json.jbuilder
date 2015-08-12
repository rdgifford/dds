json.array!(@navigators) do |navigator|
  json.extract! navigator, :id, :completion
  json.url navigator_url(navigator, format: :json)
end
