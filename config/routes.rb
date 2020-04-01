Rails.application.routes.draw do
  resources :products
  resources :orders

  root 'application#index'
end
