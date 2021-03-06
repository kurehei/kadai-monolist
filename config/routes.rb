Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  get 'signup',to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:show, :create, :destroy]
  resources :items, only: [:new,:show]
  resources :ownerships, only: [:create, :destroy]
  get 'ranking/want', to: 'rankings#want'
  get 'ranking/have', to: 'rankings#have'
end

