class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :id_on_twitter
      t.text :tweet_text
      t.datetime :posted_on
      t.timestamps
    end
  end
end
