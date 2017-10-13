class TweetsController < ApplicationController
  before_action :initilize_twitter_client, only: [:get_live_tweets]

  def get_live_tweets
    @tweets= []
    @client.search("#cricket").each do |tweet|
      if tweet.is_a?(Twitter::Tweet)
        @tweets << {id_on_twitter: tweet.id, tweet_text: tweet.text, posted_on: tweet.created_at.strftime("%B-%d-%Y at %I:%M%p")}
      end
    end
  end

  def index
    @tweets = Tweet.get_all_tweets
  end


  def create
    tweet = Tweet.new(tweet_params)
    tweet.save
    redirect_to tweets_path
  end

  private

    def tweet_params
      params.permit(:id_on_twitter, :tweet_text, :posted_on)
    end

    def initilize_twitter_client
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = Rails.application.secrets.twitter_consumer_key
        config.consumer_secret     = Rails.application.secrets.twitter_consumer_secret
        config.access_token        = Rails.application.secrets.twitter_access_token
        config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
      end
    end
end
