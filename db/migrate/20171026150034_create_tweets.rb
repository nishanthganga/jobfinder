class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :tweet_id
      t.string :name
      t.string :screen_name
      t.string :photo_url
      t.datetime :date
      t.string :message
      t.integer :favorite_count
      t.integer :retweet_count
      t.references :twitter_search_term, foreign_key: true

      t.timestamps
    end
  end
end
