Rails.application.routes.draw do

  # root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'

  resources :messages, only: [:create, :destroy]
  resources :chats, only: [:create, :destroy]
  resources :toys
  resources :users, except: [:new]
  resources :sessions, only: [:create]

end
