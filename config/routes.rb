Rails.application.routes.draw do
  get 'search/search'
  root :to => 'homes#top'
  devise_for :users
  
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create,:destroy]
  end 
  resources :relationships, only: [:index]
  post 'follow/:id' => 'relationships#follow', as: 'follow' 
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' 
  
  get 'home/about' => 'homes#about'
  get 'followerview/:id' => 'users#followerview', as: 'followerview'
  get '/search' => 'search#search'
end