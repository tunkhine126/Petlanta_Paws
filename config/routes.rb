Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :new, :create, :edit, :update, :destroy]
  resources :adoptions
  resources :pets

  get '/login', to: "sessions#new", as: 'login'
  post '/login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy", as: 'logout'




end
