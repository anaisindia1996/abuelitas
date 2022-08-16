Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :experiences do
    resources :reviews, only: [:create]
  end
end
