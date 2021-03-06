Rails.application.routes.draw do
  get    'password_resets/new'
  get    'password_resets/edit'
  get    'sessions/new'
  root   'search_circles#index'
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
  post '/questions/:circle_id/edit', to:'questions#create'
  patch '/questions/:circle_id/edit', to:'questions#update'
  get   '/questions/:circle_id/edit',to:'questions#edit'
  delete '/question', to: 'questions#destroy'
  get    '/answer',   to: 'questions#edit'
  resources :questions
  resources :circles
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create,:destroy]
end
