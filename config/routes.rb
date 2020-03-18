Rails.application.routes.draw do
  get 'products/index'

  resources :products
  
  root 'application#index'
end
