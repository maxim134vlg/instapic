Rails.application.routes.draw do
  resources :photos
  devise_for :users
  root 'pages#mainpage'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
