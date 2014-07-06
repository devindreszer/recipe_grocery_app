Rails.application.routes.draw do
  resources :yummly_recipes, only: [:index, :show]
  root 'yummly_recipes#welcome'
end
