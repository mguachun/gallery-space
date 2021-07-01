Rails.application.routes.draw do

  root to: 'sessions#welcome'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
 
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'

  get 'authorized', to: 'sessions#page_requires_login'


  get '/comments/latest_comments' => 'comments#latest_comments'

  resources :users 
  resources :works, only: [:index, :show]
  resources :comments

  resources :works do
    resources :comments
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
