Rails.application.routes.draw do


resources :users
resources :organisms
resources :walks
get '/signup', to: 'users#new'
get '/signin', to: 'sessions#new'
get '/logout', to: 'sessions#destroy'
post '/signin', to: 'sessions#create'

root to: 'welcome#index'


end
