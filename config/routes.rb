Rails.application.routes.draw do

  # Set root path
  root 'welcome#index'

  get "live_cricket_tweets", to:"tweet#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
