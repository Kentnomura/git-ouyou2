Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about"=>"homes#about"
  get "search" => "searches#search"
  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :post_comments, only: [:create,:destroy]
    resource :favorites, only: [:create, :destroy]
  end
end
