Rails.application.routes.draw do

  root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/welcome', to: 'welcome#index', as: 'welcome'

  resources :messages, only: [:create, :destroy]
  resources :chats, only: [:create, :destroy]
  resources :toys
  resources :users, except: [:new]
  resources :sessions, only: [:create]

end
