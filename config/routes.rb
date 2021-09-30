Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  get "questions/index" => "questions#index"
  get "questions/new" => "questions#new"
  get "questions/:id" => "questions#show"
  
  post "questions/create" => "questions#create"
  
  delete "questions/:id" => "questions#destroy"
  
  root 'top#index'
end
