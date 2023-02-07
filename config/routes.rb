Rails.application.routes.draw do
  resources :flights_users
  resources :users
  resources :airplanes
  resources :flights
  resources :reservations
  resources :seats
  resources :flights_seats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
