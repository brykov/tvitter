Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  resource :profile, only: [:show], controller: :profile
  resources :tvits, only: [:create, :show]
  resources :users, only: [:show]
  root to: 'home#index'
end
