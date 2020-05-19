Rails.application.routes.draw do
  root 'static_pages#forum'
  get '/signup', to: 'users#new'
end
