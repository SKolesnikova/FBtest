Rails.application.routes.draw do

  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'main#index'

  namespace :users do
    get 'omniauth_callbacks/facebook'
  end

  resources :comments, only: [:create, :update]

end
