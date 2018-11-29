Rails.application.routes.draw do
  resources :albums do
    resources :songs
  end
  resources :compute, only: [:index]
end
