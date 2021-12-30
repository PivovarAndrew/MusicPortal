Rails.application.routes.draw do
  resources :user_profiles
  resources :albums
  devise_for :users
  root to: "pages#home"
  resources :tracks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
