Feedster::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :apps do
    member do
      get :configuration
    end
  end
  resources :categories do
    resources :items
  end
  resources :items

  get ':id', to: 'apps#show'

  root to: 'pages#home'
end
