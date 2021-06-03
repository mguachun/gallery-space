Rails.application.routes.draw do
  # get 'comments/new'
  # get 'comments/create'
  # get 'works/new'
  # get 'works/create'
  # get 'users/new'
  # get 'users/create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'user#create'
  resources :users 


  resources :works
  resources :comments, only: [:new, :index, :create, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
