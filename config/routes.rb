Rails.application.routes.draw do

  resources :robots, only: [:index, :new, :create, :show]
  resources :abilities, only: [:index]


  get "/search", to: "robots#index"
end
