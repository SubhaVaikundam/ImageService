Rails.application.routes.draw do
  resources :imageservices
  resources :pricings
  resources :details
  resources :attributes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
