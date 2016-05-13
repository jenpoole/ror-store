Rails.application.routes.draw do

  resources :products
  
  # Products page as main page
  root 'products#index'
end
