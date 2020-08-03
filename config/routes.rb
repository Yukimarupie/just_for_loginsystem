Rails.application.routes.draw do
  get 'sessions/new'
  get 'login', to: 'session#create'
  
  root 'home#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
