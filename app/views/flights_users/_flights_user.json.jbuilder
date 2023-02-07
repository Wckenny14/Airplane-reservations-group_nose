json.extract! flights_user, :id, :user_id, :flight_id, :seat_number, :created_at, :updated_at
json.url flights_user_url(flights_user, format: :json)
