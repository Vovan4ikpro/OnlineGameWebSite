Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'pages#home'
  get '/home', to: 'pages#home', as: 'pages_home'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users
  resources :heroes_lists
  resources :version_lists
  resources :user_favorites_heros
  resources :user_more_infos
end