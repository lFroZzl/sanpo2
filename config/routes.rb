Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'home/index'
  resources :events
  resources :sports
  root to: "home#index"

  devise_for :users

  resources :users, only: [:edit] do
    member do
      get :profile
    end
    collection do
      get :products
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
