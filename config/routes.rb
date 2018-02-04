Rails.application.routes.draw do
  get    "/login" => "sessions#new"
  get    "/auth/github/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  resources :users, only: %i[index show]
  resources :topics
  resources :comments do
    resources :likes, only: :create
  end

  root "home#index"
end
