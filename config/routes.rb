Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  
  resources :users, only: [:show ,:update]
  get "questions/index" => "questions#index"
  get "questions/new" => "questions#new"
  get "questions/:id" => "questions#show"
  
  post "questions/create" => "questions#create"
  
  delete "questions/:id" => "questions#destroy"
  
  root 'top#index'
end
