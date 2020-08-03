Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :contacts

  resources :hotels do
    resources :reviews
    resources :reservations
    resource :favorites, only: [:create, :destroy]
  end

  resources :prefectures
  
  root 'hotels#index'

 
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/show" => "users#show"
  resources :users
  
end
