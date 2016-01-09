Rails.application.routes.draw do

 # root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  get '/signup', to: 'users#new', as: 'signup'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'

  resources :messages, only: [:create, :new, :destroy]
  resources :chats, only: [:index, :create, :destroy]
  resources :toys
  resources :users, except: [:new]
  resources :sessions, only: [:create]

end


#     Prefix Verb   URI Pattern               Controller#Action
#       login GET    /login(.:format)          sessions#new
#      signup GET    /signup(.:format)         users#new
#      logout GET    /logout(.:format)         sessions#destroy
#    messages POST   /messages(.:format)       messages#create
# new_message GET    /messages/new(.:format)   messages#new
#     message DELETE /messages/:id(.:format)   messages#destroy
#       chats POST   /chats(.:format)          chats#create
#        chat DELETE /chats/:id(.:format)      chats#destroy
#        toys GET    /toys(.:format)           toys#index
#             POST   /toys(.:format)           toys#create
#     new_toy GET    /toys/new(.:format)       toys#new
#    edit_toy GET    /toys/:id/edit(.:format)  toys#edit
#         toy GET    /toys/:id(.:format)       toys#show
#             PATCH  /toys/:id(.:format)       toys#update
#             PUT    /toys/:id(.:format)       toys#update
#             DELETE /toys/:id(.:format)       toys#destroy
#       users GET    /users(.:format)          users#index
#             POST   /users(.:format)          users#create
#   edit_user GET    /users/:id/edit(.:format) users#edit
#        user GET    /users/:id(.:format)      users#show
#             PATCH  /users/:id(.:format)      users#update
#             PUT    /users/:id(.:format)      users#update
#             DELETE /users/:id(.:format)      users#destroy
#    sessions POST   /sessions(.:format)       sessions#create