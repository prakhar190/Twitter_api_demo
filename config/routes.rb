Rails.application.routes.draw do

  # Set root path
  root 'welcome#index'

  get 'live_cricket_tweets', to:'tweets#get_live_tweets'

  post '/save_tweet' => 'tweets#create'

  resources :tweets, only: [:index]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
