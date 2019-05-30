Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :new, :create, :edit, :update, :destroy]
  resources :adoptions
  resources :pets
  resources :comments
  resources :likes, only:[:new, :create, :destroy, :show]

  delete '/users/:id', to: 'users#destroy', as: 'delete'
  get '/login', to: "sessions#new", as: 'login'
  post '/login', to: "sessions#create"
  get 'logout', to: "sessions#destroy", as: 'logout'
  get 'danceparty', to: "pets#danceparty"

end
