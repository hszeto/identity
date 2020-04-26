Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  get '/', to: 'home#index', as: :home

  namespace :api do
    resources :users, only: [:user] do
      collection do
        get :owner
      end
    end
  end
end
