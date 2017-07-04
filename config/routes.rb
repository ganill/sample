Rails.application.routes.draw do

  resources :articles
  resources :events
  devise_scope :user do
  get 'users/sign_in' => 'users/sessions#new', as: 'sign_in'
  get 'users/sign_up' => 'users/registrations#new',  as: 'sign_up'
  get '/users/sign_out' => 'users/sessions#destroy', as: 'sign_out'
  end

  devise_for :users, controllers: { registrations: 'users/registrations',sessions: 'users/sessions' }
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :comments, only: [:create]
  resources :home
  resources :profiles 

end
