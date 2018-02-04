Rails.application.routes.draw do
  get    "/login" => "sessions#new"
  get    "/auth/github/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  resources :topics

  root "home#index"
end
