Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles
  resources :users, exept: [:new]

  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy] 



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
