Rails.application.routes.draw do

  get 'teams/new'

  get 'teams/create'

  get 'teams/show'

  get 'teams/destroy'

  devise_for :organizations
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  resources :applications, only: [:new, :create, :show, :index, :edit, :update]
  resources :organizations, only: [:new, :create, :show, :edit, :update]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :projects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
