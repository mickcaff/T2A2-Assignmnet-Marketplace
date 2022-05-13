Rails.application.routes.draw do

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  namespace :provider do
    resources :services
  end
  
  
  root to: "base_pages#home"
  
  devise_for :users
end
