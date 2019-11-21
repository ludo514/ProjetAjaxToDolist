Rails.application.routes.draw do
  root 'emails#index'
  devise_for :users
  #root to: "home#index"
  resources :tasks, except: [:show]
  resources :emails, only: [:create, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
