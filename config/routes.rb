Rails.application.routes.draw do
  get 'projects/new'
  get 'projects/create'
  get 'projects/edit'
  get 'projects/update'
  get 'projects/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :skills, only: [:new, :create, :edit, :update, :destroy]
  resources :projects, only: [:new, :create, :edit, :update, :destroy]
end
