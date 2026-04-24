Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :users

  post "/tweets/:id/retweet", to: "tweets#create_retweet", as: :retweet
  post "/tweets/:id/like", to: "likes#create", as: :like_tweet
  root "tweets#index"






  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # 
end
