Rails.application.routes.draw do
  get 'books/show'

  get 'books/create'

  get 'books/edit'

  get 'books/destroy'

  get 'books/update'

  get 'books/index'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/books',   to: 'books#new'
  resources :users
  resources :books

end