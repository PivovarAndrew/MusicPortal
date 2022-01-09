require "sidekiq/web"
require "sidekiq/cron/web"

Rails.application.routes.draw do
  resources :user_profiles
  resources :albums
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "pages#home"
  resources :tracks
  resources :users
  # get "/unsubscribe", to: "users#unsubscribe"
  mount Sidekiq::Web => "/sidekiq"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
