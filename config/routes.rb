Rails.application.routes.draw do


  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :passwords     => 'users/passwords',
    :sessions      => 'users/sessions'
  }
  devise_scope :user do
    get "sign_in",  :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end
  resources :users
  resources :restaurants do
    resources :schedules, only: [:new, :create, :edit, :update]
  end

  get 'record' => 'record#index'


  root 'restaurants#index'
end
