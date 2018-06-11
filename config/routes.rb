Rails.application.routes.draw do

  resources :robots, only: [:index]
  resources :abilities, only: [:index]

end
