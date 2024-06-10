Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#my_recipes"
  # root to: "pages#home"
  # get :home, to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :recipes do
    member do
      post 'favorite'
    end
    member do
      post :duplicate
    end
    member do
      get :edit_note
      patch :update_note
    end
    collection do
      get :inspiration
      get :scrap
    end
  end
  get :my_recipes, to: "recipes#my_recipes"
  get :design, to: "pages#design"

  resources :users, only: [] do
    member do
      get :recipes
      post :follow
    end
  end
end
