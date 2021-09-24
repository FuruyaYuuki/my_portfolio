Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :create, :destroy]
  root 'home#top'
end
