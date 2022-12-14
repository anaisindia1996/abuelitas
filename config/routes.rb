Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :appointments, only: [:index, :show, :edit, :update, :destroy]
  resources :experiences do
    resources :appointments, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  # Define the custom root for my experiences
  get 'my-experiences', to: 'experiences#my_index'
  get 'my_experiences/:id', to: 'experiences#my_experience'

  # Appointments - enums
  resources :appointments, only: [:index, :show, :destroy ]

  get 'confirm_appointment/:id', to: 'appointments#confirm', as: :confirm_appointment
  get 'decline_appointment/:id', to: 'appointments#decline', as: :decline_appointment

  get 'agents-appointments', to: 'appointments#my_agent_appointments'
end
