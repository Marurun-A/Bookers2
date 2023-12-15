Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    delete '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :edit, :update]
  root to: "homes#top"
  # get 'homes/about', to:'homes#about', as:'about'
  get 'home/about' => 'homes#about'
  get 'homes/new', to:'homes#new', as:'new'

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :resources, only: [:destroy], method: :delete

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
