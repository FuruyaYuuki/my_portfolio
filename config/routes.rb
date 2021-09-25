Rails.application.routes.draw do
  resources :questions, only: [:show, :new, :create, :destroy]
  root 'top#index'
end
