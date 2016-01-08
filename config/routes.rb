Rails.application.routes.draw do

  get 'welcome/index'

 resources :users
 resources :chats
 resources :messages
 resources :toys
 resources :session

#         Prefix Verb   URI Pattern                  Controller#Action
#         users GET    /users(.:format)             users#index
#               POST   /users(.:format)             users#create
#      new_user GET    /users/new(.:format)         users#new
#     edit_user GET    /users/:id/edit(.:format)    users#edit
#          user GET    /users/:id(.:format)         users#show
#               PATCH  /users/:id(.:format)         users#update
#               PUT    /users/:id(.:format)         users#update
#               DELETE /users/:id(.:format)         users#destroy
#         chats GET    /chats(.:format)             chats#index
#               POST   /chats(.:format)             chats#create
#      new_chat GET    /chats/new(.:format)         chats#new
#     edit_chat GET    /chats/:id/edit(.:format)    chats#edit
#          chat GET    /chats/:id(.:format)         chats#show
#               PATCH  /chats/:id(.:format)         chats#update
#               PUT    /chats/:id(.:format)         chats#update
#               DELETE /chats/:id(.:format)         chats#destroy
#      messages GET    /messages(.:format)          messages#index
#               POST   /messages(.:format)          messages#create
#   new_message GET    /messages/new(.:format)      messages#new
#  edit_message GET    /messages/:id/edit(.:format) messages#edit
#       message GET    /messages/:id(.:format)      messages#show
#               PATCH  /messages/:id(.:format)      messages#update
#               PUT    /messages/:id(.:format)      messages#update
#               DELETE /messages/:id(.:format)      messages#destroy
#          toys GET    /toys(.:format)              toys#index
#               POST   /toys(.:format)              toys#create
#       new_toy GET    /toys/new(.:format)          toys#new
#      edit_toy GET    /toys/:id/edit(.:format)     toys#edit
#           toy GET    /toys/:id(.:format)          toys#show
#               PATCH  /toys/:id(.:format)          toys#update
#               PUT    /toys/:id(.:format)          toys#update
#               DELETE /toys/:id(.:format)          toys#destroy
# session_index GET    /session(.:format)           session#index
#               POST   /session(.:format)           session#create
#   new_session GET    /session/new(.:format)       session#new
#  edit_session GET    /session/:id/edit(.:format)  session#edit
#       session GET    /session/:id(.:format)       session#show
#               PATCH  /session/:id(.:format)       session#update
#               PUT    /session/:id(.:format)       session#update
#               DELETE /session/:id(.:format)       session#destroy
end
