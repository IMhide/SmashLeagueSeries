Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homepage#index'
  resources :teams, only: [:index, :show]
  resources :vods, only: [:index, :show]
  resources :matches, only: [:index, :show]
  resources :about_us, only: [:index]
end
