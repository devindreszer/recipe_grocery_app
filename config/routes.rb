Rails.application.routes.draw do
  resources :yummly_recipes, only: [:index]
  root 'yummly_recipes#welcome'
end
