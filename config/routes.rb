Rails.application.routes.draw do
  # root to: 'details#index'
  root to: 'posts#index'
  resources :details
  resources :posts
  # root to: 'welcome#home'
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :todos
    end
  end
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
