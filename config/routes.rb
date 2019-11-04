Rails.application.routes.draw do
  get 'teams/index'
  get 'teams/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homepage#index'
  resources :teams, only: [:index, :show]
end
