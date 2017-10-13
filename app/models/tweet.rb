class Tweet < ApplicationRecord
  validates :id_on_twitter, uniqueness: true

  scope :get_all_tweets, -> { self.all }
end
