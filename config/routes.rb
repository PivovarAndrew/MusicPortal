Rails.application.routes.draw do
  resources :albums
  get "/_album_tracks", to: "albums#_album_tracks"
  get "/my_playlist", to: "albums#user_albums"
  get "/_searched_albums", to: "pages#_searched_albums"
  devise_for :users
  root to: "pages#home"
  resources :tracks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
