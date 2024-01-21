# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :reviews, only: [:create, :destory]
    end
  end

  get '*path', to: 'pages#index', via: :all
end