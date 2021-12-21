Rails.application.routes.draw do
  get "home/destinations"
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
