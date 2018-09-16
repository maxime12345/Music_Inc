# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr/ do
    root to: 'albums#index'
    resources :albums
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
