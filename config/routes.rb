Rails.application.routes.draw do

  devise_for :users

  namespace :admin do
    root "dashboard#index"
    resources :categories, only: [:index, :new, :create]
  end
end
