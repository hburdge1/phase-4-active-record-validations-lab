Rails.application.routes.draw do
  resources :authors, only: [:index, :create, :update, :destroy]
  resources :posts, only: [:index, :create, :update, :destroy]
end
