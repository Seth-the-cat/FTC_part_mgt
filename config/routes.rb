Rails.application.routes.draw do
  resources :projects
  resources :project_types
  resources :parts
  resources :manufacturers
  resources :assignments
  resources :grants
  resources :roles
  resources :rights
  resources :contents
  devise_for :users
  resources :users
  as :user do
    get "login", :to => "devise/sessions#new"
  end

  get "homepage" => 'contents#homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "parts#index"
end
