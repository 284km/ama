Rails.application.routes.draw do
  get    "/login" => "sessions#new"
  get    "/auth/github/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  resources :users, only: %i[index show]
  resources :topics
  resources :comments do
    resource :like, only: %i[create destroy]
  end

  direct :github_repository do
    "https://github.com/railsdm/ama"
  end

  root "home#index"
end
