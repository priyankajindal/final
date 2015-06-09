Rails.application.routes.draw do
  
  # get '/subscriptions', to: 'subscriptions#index'
  # get '/subscriptions/new', to: 'subscriptions#new'
  # post '/subscriptions', to: 'subscriptions#create'
  # get '/subscriptions/:id', to: 'subscriptions#show'
  # get '/subscriptions/:id/edit', to: 'subscriptions#edit'
  # patch '/subscriptions/:id', to: 'subscriptions#update'
  # delete '/subscriptions/:id', to: 'subscriptions#destroy'

  resources :subscriptions
  resources	:devices
  resources :sessions
  resources :users

  get "/logout", to: "sessions#destroy"

  root to: "subscriptions#index"
  
end

