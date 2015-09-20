json.array!(@shifts) do |shift|
  json.extract! shift, :id
  json.url shift_url(shift, format: :json)
end
