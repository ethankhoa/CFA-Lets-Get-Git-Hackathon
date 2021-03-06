Rails.application.routes.draw do
  resources :projects do
      get 'pages/project_dashboard'
      resources :collaborators
  end
  resources :posts
  resources :forums
  resources :topics

  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/dashboard'

  get 'pages/users'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
