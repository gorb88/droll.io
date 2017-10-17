Rails.application.routes.draw do

  get 'welcome/index'

  resources :users, only: [:new, :create]

  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: [:index, :create]
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  root 'welcome#index'

end
