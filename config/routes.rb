Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'

  resources :trips do
    resources :reviews
  end
  resources :reviews do
    post 'upvote'
    post 'downvote'
  end
end
