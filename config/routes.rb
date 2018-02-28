Rails.application.routes.draw do

  get 'team_members/new'

  get 'team_members/create'


  devise_for :organizations
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  resources :organizations, only: [:new, :create, :show, :edit, :update]
  # resources :users, only: [:new, :create, :show, :edit, :update]
  resources :projects do
    get 'classroom', to: :classroom, controller: 'projects'
    resources :proposals, only: [:new,  :show, :create]
  end

  resources :proposals, only: [:index, :show, :destroy, :update]
  resources :teams, only: [:show, :new, :create, :delete] do
    resources :team_members, only: [:new, :create]
  end

  resources :users, only: [:new, :create, :show, :edit, :update]

  mount Thredded::Engine => '/forum'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
