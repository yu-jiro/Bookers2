Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  get 'home/about' => 'homes#about'
  
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy] #単数にするとコントローラのidがリクエストに含まれなくなる
  end

end
