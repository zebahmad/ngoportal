require 'resque/server'
Rails.application.routes.draw do
  resources :child_records
  resources :payment_records
  resources :sponsors
  resources :children
  resources :accountactivations, only: [:edit]
  resources :users
  resources :sponsorship_ds
  resources :students
  resources :requirements
  resources :child_sponsorships


  root "users#home"
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/save_sponsorship', to: 'sponsorship_ds#save'
  get '/search', to: 'search#search'

  mount Resque::Server.new, at: "/resque"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
