Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'


  devise_for :organizations, path: 'organizations', controllers: { sessions: 'organizations/sessions', registrations: 'organizations/registrations' }
  devise_for :users, path: 'users', controllers: { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions', registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  get 'landing', to: "organizations#landing"
  get 'contact_us', to: "pages#contact_us"

  resources :organizations, only: [:show, :edit, :destroy, :update]

  # resources :users, only: [:new, :create, :show, :edit, :update]
  resources :projects do
    resources :teams, only: [:new, :index, :create]
    get 'classroom', to: :classroom, controller: 'projects'
    resources :proposals, only: [:edit, :show, :create, :destroy, :update]
    get 'proposal/:id/confirm', to: 'proposals#confirm', as: 'proposal_confirm'
  end
  resources :proposals, only: [:index, :destroy, :update]
  resources :teams, only: [:show, :delete, :edit, :update] do
    resources :team_members, only: [:new, :create]
  end

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]

  #for payments
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
