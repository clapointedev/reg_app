json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :address1, :address2, :city, :state, :zip, :country
  json.url user_url(user, format: :json)
end
