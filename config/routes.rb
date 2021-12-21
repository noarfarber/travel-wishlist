Rails.application.routes.draw do
  resources :destinations
  root "home#index"

  resources :destinations
end
