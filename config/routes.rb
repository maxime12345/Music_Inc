# frozen_string_literal: true

Rails.application.routes.draw do
  get 'albums/index'
  get 'albums/show'
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/update'
  get 'albums/destroy'
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
