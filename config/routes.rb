Rails.application.routes.draw do
  get    'password_resets/new'
  get    'password_resets/edit'
  get    'sessions/new'
  root   'circlelist#index'
  get    '/list',     to: 'circlelist#index'
  get    '/help',     to: 'static_pages#help'
  get    '/about',    to: 'static_pages#about'
  get    '/contact',  to: 'static_pages#contact'
  get    '/signup',   to: 'circles#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  get    '/search',   to: 'search_circles#index'
  get    '/question', to: 'questions#index'
  post   '/question', to: 'questions#create'
  patch  '/question', to: 'questions#update'
  delete '/question', to: 'questions#destroy'
  resources :questions
  resources :circles
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create,:destroy]
end
