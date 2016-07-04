Rails.application.routes.draw do

  resources :restaurants do
    resources :schedules, only: [:new, :create, :edit, :update]
  end

  get 'record/index'

  root 'restaurants#index'
end
