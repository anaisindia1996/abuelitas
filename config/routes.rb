Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :experiences do
    resources :review, only: [:create]
  end
end
