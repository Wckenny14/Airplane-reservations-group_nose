json.extract! flights_seat, :id, :seat_id, :flight_id, :created_at, :updated_at
json.url flights_seat_url(flights_seat, format: :json)
