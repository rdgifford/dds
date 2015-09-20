json.array!(@users_shifts) do |users_shift|
  json.extract! users_shift, :id
  json.url users_shift_url(users_shift, format: :json)
end
