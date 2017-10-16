Rails.application.routes.draw do

  get 'welcome/index'

  resources :questions do
    resources :answers
  end

  root 'welcome#index'

end
