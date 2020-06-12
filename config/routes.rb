Rails.application.routes.draw do
  get 'bios/new', to: 'bios#new'
  post 'bios/create', to: 'bios#create'
  get 'bios/edit', to: 'bios#edit', as: :bio_edit
  patch 'bios/update', to: 'bios#update', as: :bio_update
  delete 'bios/destroy', to: 'bios#destroy'
  # get 'projects/new'
  # post 'projects/create'
  # get 'projects/edit'
  # patch 'projects/update'
  # delete 'projects/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :skills, only: [:new, :create, :edit, :update, :destroy]
  resources :projects, only: [:new, :create, :edit, :update, :destroy]
end
