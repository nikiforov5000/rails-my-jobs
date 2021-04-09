Rails.application.routes.draw do
  root to: 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jobs do
    resources :cover_letters, only: [:new, :create]
  end

  resources :cover_letters, only: [:show, :update, :destroy]
end
