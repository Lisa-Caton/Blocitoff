Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users do
    resources :items, only: [:create, :show, :destroy]
  end


end
