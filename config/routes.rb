Rails.application.routes.draw do
  devise_for :users

  resources :yummly_recipes, only: [:index, :show]

  root 'yummly_recipes#welcome'
end
