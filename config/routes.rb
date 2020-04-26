Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  use_doorkeeper

  get '/', to: 'home#index', as: :home

  namespace :api do
    resources :users, only: [:user] do
      collection do
        get :owner
      end
    end
  end
end
