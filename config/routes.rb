Rails.application.routes.draw do

  resources :robots, only: [:index, :show, :new, :create]
  resources :abilities, only: [:index, :show]


  get "search", to: "robots#index"

end
