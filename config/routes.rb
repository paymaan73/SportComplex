Rails.application.routes.draw do

  resources :users

  resources :sports, only:[:index, :create]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"


end
