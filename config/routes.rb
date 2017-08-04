Rails.application.routes.draw do
  
    
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks'}
  #as :user do
   # get 'sign_in' => 'users/sessions#new', :as => 'sign_in'
   # get 'sign_up' => 'users/registrations#new', :as => 'sign_up'
   # get 'sign_out' => 'users/sessions#destroy', :as => 'sign_out'
  #end

  get 'welcome/index'
  root 'welcome#index'

  #root to: "photos#index"
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
