Rails.application.routes.draw do
  resources :comments
  get    "/login" => "sessions#new"
  get    "/auth/github/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  resources :users, only: %i[index show]
  resources :topics

  root "home#index"
end
