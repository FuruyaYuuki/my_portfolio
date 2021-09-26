Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :new, :create, :destroy]
  root 'top#index'
end
