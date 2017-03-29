Rails.application.routes.draw do
  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root "devise/sessions#new"
end
