Rails.application.routes.draw do
  resources :bills
  devise_for :admins
  resources :rate_cards
  resources :leaves
  resources :accounts
  resources :residents
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/developers', to: 'static_pages#developers'
end