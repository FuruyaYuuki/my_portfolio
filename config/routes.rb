Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :questions, only: [:index, :new, :show, :create, :destroy]
  resources :users, only: [:show ,:update]
  
  root 'top#index'
end
