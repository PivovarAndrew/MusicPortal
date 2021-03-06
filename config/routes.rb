require "sidekiq/web"
require "sidekiq/cron/web"

Rails.application.routes.draw do
  resources :user_albums
  resources :albums do
    resources :tracks
    resources :comments, only: [:create]
    collection { post :import_to_csv }
    post "/charts", to: "albums#charts"
  end

  get "/_album_tracks", to: "albums#_album_tracks"
  get "/_comments", to: "comments#_comments"
  resources :user_profiles
  resources :albums
  resources :likes, only: %i[create destroy]
  resources :dislikes, only: %i[create destroy]

  get "/charts", to: "pages#charts"

  get "/_pagy_filter_albums_grid", controller: "pages", action: "_pagy_filter_albums_grid"
  get "/_searched_albums", to: "pages#_searched_albums"
  get "/_searched_api_albums", to: "albums#_searched_api_albums"
  post "/save_api_album", to: "albums#save_api_album"
  post "/performer_albums", to: "albums#performer_albums"
  post "/_add_album_to_playlist", to: "user_albums#_add_album_to_playlist"
  devise_for :users
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  root to: "pages#home"
  resources :users do
    get "/activity", to: "users#activity"
  end
  # get "/unsubscribe", to: "users#unsubscribe"
  mount Sidekiq::Web => "/sidekiq"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
