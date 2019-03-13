Rails.application.routes.draw do
  devise_for :users

  resources :projects, only: %i[index]
  resources :locations, only: %i[index]

  root 'home#index'
end
