Feedster::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :categories
  resources :items

  get ':id', to: 'categories#show'

  root to: 'pages#home'
end
