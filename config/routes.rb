Rails.application.routes.draw do
  get 'organizations/new'

  get 'organizations/create'

  get 'organizations/update'

  get 'organizations/edit'

  get 'organizations/show'

  get 'applications/new'

  get 'applications/create'

  get 'applications/show'

  get 'applications/index'

  get 'applications/edit'

  get 'applications/upgrade'

  get 'projects/new'

  get 'projects/create'

  get 'projects/show'

  get 'projects/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  devise_for :organizations
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
