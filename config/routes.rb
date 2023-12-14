Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  root to: "homes#top"
  get 'homes/about', to:'homes#about', as:'about'
  get 'homes/new', to:'homes#new', as:'new'

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
