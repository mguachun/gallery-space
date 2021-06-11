Rails.application.routes.draw do

  root to: 'sessions#welcome'
 
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users 
  resources :works
  resources :comments, only: [:new, :index, :create, :edit]

  resources :works do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
