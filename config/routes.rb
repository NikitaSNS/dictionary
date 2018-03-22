Rails.application.routes.draw do
  resources :words
  root 'words#index'


  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  get '/signup' => 'users#new', as: 'signup'
  post '/users' => 'users#create'
end
