Rails.application.routes.draw do

  resources :users, except: [:destroy]
   # users routes
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  # get '/users/edit', to: "users#edit"

  get "/about", to: "pages#about"

  # sessions routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  # post "/sessions", to: "sessions#create"
  resources :sessions

  resources :maps
  root "pages#home"
end

#       Prefix Verb   URI Pattern                  Controller#Action
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#       signup GET    /signup(.:format)            users#new
#      profile GET    /profile(.:format)           users#show
#        about GET    /about(.:format)             pages#about
#        login GET    /login(.:format)             sessions#new
#       logout GET    /logout(.:format)            sessions#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#         maps GET    /maps(.:format)              maps#index
#              POST   /maps(.:format)              maps#create
#      new_map GET    /maps/new(.:format)          maps#new
#     edit_map GET    /maps/:id/edit(.:format)     maps#edit
#          map GET    /maps/:id(.:format)          maps#show
#              PATCH  /maps/:id(.:format)          maps#update
#              PUT    /maps/:id(.:format)          maps#update
#              DELETE /maps/:id(.:format)          maps#destroy
#         root GET    /                            pages#home
