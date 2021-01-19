Rails.application.routes.draw do

  root to: "sports#index"

  resources :users do

    resources :sports, only:[:index, :create]
  end

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  post "sport_activity", to: "sports#create"

  get '/users/#misssing', to: "sports#index"


end
