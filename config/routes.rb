Rails.application.routes.draw do

  resources :categories
  root 'articles#index'
  devise_for :users
  
  resources :articles do
    resources :comments, only: [:create, :destroy, :update, :show]
  end

  get '/dashboard', to: 'welcome#dashboard'
  put '/articles/:id/publish', to: 'articles#publish'

end
