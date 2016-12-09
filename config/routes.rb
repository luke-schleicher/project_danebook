Rails.application.routes.draw do

  root 'users#new'

  resources :users do
    resources :posts
  end
  
  resource :session, only: [:new, :create, :destroy]

  get 'login' => 'users#new'
  get 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
