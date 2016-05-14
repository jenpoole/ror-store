Rails.application.routes.draw do

  resources :products
  
  resource :cart, only: [ :show ] do
    post "add", path: "add/:id"
  end
  
  # Products page as main page
  root 'products#index'
end
