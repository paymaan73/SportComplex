Rails.application.routes.draw do

  resources :users

  resources :sport, only[:index, :create]

end
