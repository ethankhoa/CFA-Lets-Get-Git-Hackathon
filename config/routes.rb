Rails.application.routes.draw do
  resources :projects
  root 'pages#home'

  get 'pages/about'

  get 'pages/contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
