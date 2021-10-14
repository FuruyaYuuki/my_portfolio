Rails.application.routes.draw do
  
  devise_for :admins
  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end

  resources :questions, only: [:index, :new, :show, :create, :destroy]
  resources :users, only: [:show]
  resources :admins, only: [:show]
  resources :answers, only: [:new, :show, :create, :edit, :update, :destroy]
  get '/search', to: 'searchs#search'
  get '/search/form', to: 'searchs#form'
  
  root 'top#index'
  
end
