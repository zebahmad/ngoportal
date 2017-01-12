Rails.application.routes.draw do
  resources :child_sponsorships
  resources :payment_records
  resources :child_records
  resources :children
  resources :sponsors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
