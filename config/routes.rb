Rails.application.routes.draw do
  resources :users, except: [:destroy]
  resources :maps
  root "pages#home" 
end

#       Prefix Verb   URI Pattern               Controller#Action
#    users_new GET    /users/new(.:format)      users#new
# users_create GET    /users/create(.:format)   users#create
#   users_show GET    /users/show(.:format)     users#show
#   users_edit GET    /users/edit(.:format)     users#edit
# users_update GET    /users/update(.:format)   users#update
#   pages_home GET    /pages/home(.:format)     pages#home
#        users GET    /users(.:format)          users#index
#              POST   /users(.:format)          users#create
#     new_user GET    /users/new(.:format)      users#new
#    edit_user GET    /users/:id/edit(.:format) users#edit
#         user GET    /users/:id(.:format)      users#show
#              PATCH  /users/:id(.:format)      users#update
#              PUT    /users/:id(.:format)      users#update
#         maps GET    /maps(.:format)           maps#index
#              POST   /maps(.:format)           maps#create
#      new_map GET    /maps/new(.:format)       maps#new
#     edit_map GET    /maps/:id/edit(.:format)  maps#edit
#          map GET    /maps/:id(.:format)       maps#show
#              PATCH  /maps/:id(.:format)       maps#update
#              PUT    /maps/:id(.:format)       maps#update
#              DELETE /maps/:id(.:format)       maps#destroy
