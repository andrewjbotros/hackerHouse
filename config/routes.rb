HackerHouse::Application.routes.draw do
  resources :users
  resources :sessions
  root to: 'welcome#index'

end
