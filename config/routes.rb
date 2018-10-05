Rails.application.routes.draw do
  resources :departments
  resources :locations
  namespace :admin do
    resources :regions
  end
  resources :posts
  #get 'pages/home'
  devise_for :users
  resources :todos
  root 'pages#home'
  resources :users, only: [:show, :edit, :update, :preferences]
  namespace :admin do
	resources :settings
	post '/ping' => 'settings#ping', as: 'ping'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


