Rails.application.routes.draw do
  devise_for :users

  resources :yummly_recipes, only: [:index, :show]

  resources :recipes, only: [:index, :create]

  root 'yummly_recipes#welcome'
end
