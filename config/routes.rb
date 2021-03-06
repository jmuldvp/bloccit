Rails.application.routes.draw do
  # get 'labels/show'
  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
  end
  
  resources :post, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end
  
  resources :users, only: [:new, :create, :show]
  
  resources :sessions, only: [:new, :create, :destroy]
  
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'welcome/index'  # this is already established below using root

  # get 'welcome/about'
  get 'about' => 'welcome#about'
  
  root 'welcome#index'
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :topics, except: [:edit, :new]
    end
  end

end
