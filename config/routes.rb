Rails.application.routes.draw do
  resources :photos
  devise_for :users
  root 'pages#mainpage'
  get 'pages/about'
  get '/profiles/:id' => 'profiles#show', as: "profile"
  get '/profiles/:id/subscribe' => 'profile#subscribe', as: 'subscribe_profile'
  get '/profiles/:id/unsubscribe' => 'profile#unsubscribe', as: 'unsubscribe_profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
