Rails.application.routes.draw do


resources :users
resources :organisms
resources :walks

get '/signup', to: 'users#new', as: 'signup'
get '/signin', to: 'sessions#new'
post '/signin', to: 'sessions#create'
get '/signout', to: 'sessions#destroy'
get '/users/:id/delete_profile', to: 'users#destroy',as: 'delete_profile'


root to: 'welcome#index'


end
