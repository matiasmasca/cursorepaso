Rails.application.routes.draw do
  devise_for :users

  resources :cities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/provinces', to: 'provinces#index'
  get '/provinces/:id' => 'provinces#show'

  get '/welcome', to: 'pages#welcome'

  root 'pages#welcome'
end
