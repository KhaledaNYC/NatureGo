Rails.application.routes.draw do


  #
  #
  root to: 'welcome#show'
  # get '/signup', to: 'registration#new', as: 'signup'
  # get '/register', to: 'registration#create', as: 'register'

  resources :users


end
