Rails.application.routes.draw do

  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :users
  root to: "homes#top"
  get 'homes/about', to:'homes#about', as:'about'

  resources :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
