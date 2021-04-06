Rails.application.routes.draw do
  get 'cover_letters/new'
  get 'cover_letters/create'
  get 'cover_letters/show'
  get 'cover_letters/destroy'
  root to: 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jobs do
    resources :cover_letter, only: [:new, :create]
  end

  resources :cover_letter, only: [:show, :update, :destroy]
end
