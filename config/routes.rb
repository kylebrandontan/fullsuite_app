Rails.application.routes.draw do
  resources :products

  root 'application#index'
end
