Rails.application.routes.draw do
  root 'list#index'

  devise_for :users

  resources :users do
    resources :list do
      resources :task
    end
  end
end
