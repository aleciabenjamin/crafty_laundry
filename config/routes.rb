Rails.application.routes.draw do
  default_url_options :host => "example.com"
  devise_for :users
  root controller: :laundry_rooms, action: :index
  resources :laundry_rooms, only: [:index, :show] do
      get :create_booking
  end
end