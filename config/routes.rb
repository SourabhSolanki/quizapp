Rails.application.routes.draw do
  root to: "dashboards#show"
  devise_for :users
  resource :dashboards, only: :show
  resources :quizzes do
    resources :questions, only: [:new, :create, :destroy]
    resources :results, only: [:new, :create]
  end
end
