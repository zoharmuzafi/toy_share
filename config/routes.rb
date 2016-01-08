Rails.application.routes.draw do

  # root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login_path'
  get '/signup', to: 'users#new', as: 'signup_path'
  get '/logout', to: 'sessions#destroy', as: 'logout_path'

  resources :messages, only: [:create, :destroy]
  resources :chats, only: [:create, :destroy]
  resources :toys
  resources :users, except: [:new]
  resources :session, only: [:create]

end
