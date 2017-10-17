Rails.application.routes.draw do

  get 'welcome/index'

  resources :users, only: [:new, :create]

  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: [:index, :create]
  end

  root 'welcome#index'

end
