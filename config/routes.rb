Saveitforlater::Application.routes.draw do
  root 'static_pages#home'

  resources :users
  resources :memos, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signup',  to: 'users#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  

  
end
