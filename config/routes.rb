HackerHouse::Application.routes.draw do

  get 'signin'          =>  'sessions#new', as: :signin
  get 'signout'         =>  'sessions#destroy', as: :signout
  resources :sessions, only: [:create]
  resources :users

  root to: 'welcome#index'

end
