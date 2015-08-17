Rails.application.routes.draw do

   # users routes
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  # sessions routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  # post "/sessions", to: "sessions#create" 
  resources :sessions, only: [:create]

  resources :users, except: [:destroy]
  resources :maps
  root "pages#home" 
end

# Prefix Verb   URI Pattern               Controller#Action
#    signup GET    /signup(.:format)         users#new
#   profile GET    /profile(.:format)        users#show
#     users POST   /users(.:format)          users#create
#     login GET    /login(.:format)          sessions#new
#    logout GET    /logout(.:format)         sessions#destroy
#  sessions POST   /sessions(.:format)       sessions#create
#           GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#      maps GET    /maps(.:format)           maps#index
#           POST   /maps(.:format)           maps#create
#   new_map GET    /maps/new(.:format)       maps#new
#  edit_map GET    /maps/:id/edit(.:format)  maps#edit
#       map GET    /maps/:id(.:format)       maps#show
#           PATCH  /maps/:id(.:format)       maps#update
#           PUT    /maps/:id(.:format)       maps#update
#           DELETE /maps/:id(.:format)       maps#destroy
#      root GET    /                         pages#home