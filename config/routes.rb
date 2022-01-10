Rails.application.routes.draw do
  resources :user_albums
  resources :albums do
    resources :tracks
  end
  get "/_album_tracks", to: "albums#_album_tracks"
  get "/_pagy_filter_albums_grid", controller: "pages", action: "_pagy_filter_albums_grid"
  get "/_searched_albums", to: "pages#_searched_albums"
  post "/_add_album_to_playlist", to: "user_albums#_add_album_to_playlist"
  devise_for :users
  root to: "pages#home"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
