Rails.application.routes.draw do
  resources :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#new'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'book', to: 'books#create'
  get 'users/:username', to: 'users#show', as: 'profile'
end
