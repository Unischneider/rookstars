Rails.application.routes.draw do

  devise_for :organizations
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  resources :organizations, only: [:new, :create, :show, :edit, :update]
  # resources :users, only: [:new, :create, :show, :edit, :update]
  resources :projects do
    resources :teams, only: [:index, :new, :create]
    resources :proposals, only: [:create, :edit, :update]
    # resources :proposals, only: [:new, :create]
  end
  resources :proposals, only: [:index, :show, :destroy, :update]
  resources :teams, only: [:show, :delete, :edit, :update] do
    resources :team_members, only: [:new, :create]
  end
  resources :users, only: [:new, :create, :show, :edit, :update]




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
