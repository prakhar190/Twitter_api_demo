class TweetController < ApplicationController
    before_action :initilize_twitter_client, only: [:index]

  def index
    @tweets= []
    @client.search("#cricket").each_with_index do |tweet, index|
      # puts index.to_s + '......' +tweet.id.to_s if tweet.is_a?(Twitter::Tweet)
      if tweet.is_a?(Twitter::Tweet)
        @tweets << {s_no: index+1, tweet_id: tweet.id, tweet_text: tweet.text, posted_on: tweet.created_at.strftime("%B-%d-%Y at %I:%M%p")}
      end
      # puts '>>>>>' + index.to_s + '......'+ tweet.text
    end
    puts @tweets
  end

  private
    def initilize_twitter_client
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = Rails.application.secrets.twitter_consumer_key
        config.consumer_secret     = Rails.application.secrets.twitter_consumer_secret
        config.access_token        = Rails.application.secrets.twitter_access_token
        config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
      end
    end
end
