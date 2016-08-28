Rails.application.routes.draw do


resources :users
resources :organisms
resources :walks

get '/signup', to: 'registrations#new', as: 'signup'
get '/signin', to: 'sessions#new'
post '/signin', to: 'sessions#create'
delete '/signout', to: 'sessions#destroy'


root to: 'welcome#index'


end
