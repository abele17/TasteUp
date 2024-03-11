Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#my_recipes"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :recipes do
    resources :favorites, only: :create
    member do
      post :duplicate
    end
    collection do
      get :inspiration
      get :scrap
    end
  end
  get :my_recipes, to: "recipes#my_recipes"

  get :design, to: "pages#design"
  resources :favorites, only: :destroy

  resources :users, only: [] do
    resources :follows, only: :create
    member do
      get :recipes
    end
  end
end
