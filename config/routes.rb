Rails.application.routes.draw do
  resources :user_albums
  resources :albums do
    resources :comments, only: [:create]
  end

  get "/_album_tracks", to: "albums#_album_tracks"
  get "/_searched_albums", to: "pages#_searched_albums"
  post "/_add_album_to_playlist", to: "albums#_add_album_to_playlist"
  devise_for :users
  root to: "pages#home"
  resources :tracks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
