Rails.application.routes.draw do
  get 'messages/index'
  get 'services/index'
  get 'services/show'

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  root to: "base_pages#home"

  resources :services, only: [:index, :show] do 
    resources :comments, only: [:create]
  end

  namespace :provider do
    resources :services
  end

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  
  devise_for :users
end
