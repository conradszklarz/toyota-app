Rails.application.routes.draw do
  namespace :api do
    get '/display_all_cars' => 'cars#all_cars'
    get '/display_first_car' => 'cars#first_car'
    get '/display_second_car' => 'cars#second_car'
  end
end
