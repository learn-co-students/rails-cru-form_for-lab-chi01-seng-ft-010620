Rails.application.routes.draw do
  resources :songs, only: [:index,:new, :create,:edit,:update,:show]
  resources :genres, only: [:new,:create,:edit,:update,:show]
  resources :artists, only: [:new,:create,:edit,:update,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Prefix Verb  URI Pattern            Controller#Action
#   songs POST  /songs(.:format)       songs#create
#    song GET   /songs/:id(.:format)   songs#show
#         PATCH /songs/:id(.:format)   songs#update
#         PUT   /songs/:id(.:format)   songs#update
#  genres POST  /genres(.:format)      genres#create
#   genre GET   /genres/:id(.:format)  genres#show
#         PATCH /genres/:id(.:format)  genres#update
#         PUT   /genres/:id(.:format)  genres#update
# artists POST  /artists(.:format)     artists#create
#  artist GET   /artists/:id(.:format) artists#show
#         PATCH /artists/:id(.:format) artists#update
#         PUT   /artists/:id(.:format) artists#update