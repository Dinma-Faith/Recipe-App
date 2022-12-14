Rails.application.routes.draw do
  get 'general_shopping_list/index'
  get 'public_recipes/index'
  root 'foods#index'

  resources :recipe_foods
  resources :recipes
  resources :foods
  devise_for :users

  resources :foods, only: [:index, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
