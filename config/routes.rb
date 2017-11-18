Rails.application.routes.draw do
  root 'home#index'

  get 'about', to: 'home#about'
  get 'signin', to: 'home#authen'
  
  # get 'home/index'

  resources 'members' do
    resources 'coordinates'
  end
  resources 'committees'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
end
