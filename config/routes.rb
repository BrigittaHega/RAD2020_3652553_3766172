Rails.application.routes.draw do
  root 'static_pages#forum'


# Dawaname's tutorial code:
  get 'sessions/new'
  get 'users/new'

  ## commentted out because we don't have this files.
  # get '/help', to: 'static_pages#help'
  # get '/about', to: 'static_pages#about'
  # get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
