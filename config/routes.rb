Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
end
