# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :project_profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'page#home'

  get '/home', to: 'page#home'
end
