Rails.application.routes.draw do
 
 
  
  devise_for :users,
  path: '',
  path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
  
  resources :users, :only => [:index, :show]
  
  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   resources :log_entries
  
  resources :privacy_policy, only: [:index] 
  # get 'privacy_policy', to: 'privacy_policy#index'

  
  root to: "log_entries#index"
  
  
end
