Rails.application.routes.draw do
  # get 'comments/new'
  # get 'comments/create'
  # get 'works/new'
  # get 'works/create'
  # get 'users/new'
  # get 'users/create'
  # get 'works/index'

  root to: 'sessions#welcome'

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users 
  resources :works
  resources :comments, only: [:new, :index, :create, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
