Rails.application.routes.draw do
  resources :user_albums
  resources :albums do
    resources :comments, only: [:create]
  end

  get "/_album_tracks", to: "albums#_album_tracks"
  get "/_comments", to: "comments#_comments"
  get "/_searched_albums", to: "pages#_searched_albums"
  post "/_add_album_to_playlist", to: "albums#_add_album_to_playlist"
  resources :user_profiles
  resources :albums
  resources :likes, only: %i[create destroy]
  resources :dislikes, only: %i[create destroy]
  get "/_album_tracks", to: "albums#_album_tracks"
  get "/_searched_albums", to: "pages#_searched_albums"
  post "/_add_album_to_playlist", to: "albums#_add_album_to_playlist"
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "pages#home"
  resources :tracks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
