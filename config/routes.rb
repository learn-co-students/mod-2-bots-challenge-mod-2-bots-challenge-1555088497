Rails.application.routes.draw do

  resources :robots, only: [:index, :show, :new, :create]
  resources :abilities, only: [:index, :show]

end
