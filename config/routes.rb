Rails.application.routes.draw do

  resources :users

  resources :sports, only:[:index, :create]

end
