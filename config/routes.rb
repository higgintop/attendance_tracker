Rails.application.routes.draw do

  root 'home#index'

  resources :students, only: [:index, :new, :create]
  resources :attendances, only: [:index, :new, :create]
end
