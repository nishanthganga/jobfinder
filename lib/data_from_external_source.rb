module DataFromExternalSource
  def self.from_twitter search_term
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

    twitter_search_term = TwitterSearchTerm.find_by_term(search_term)

    last_tweet_for_search_term = Tweet.where(twitter_search_term_id: twitter_search_term.id).last
    if last_tweet_for_search_term

      minutes_since_last_fetch = Tweet.minutes_since_last_fetch(last_tweet_for_search_term.created_at)
      if minutes_since_last_fetch < 30
        return false
      end

      # if its greater than 30 mins, find the last tweet's id
      since_id = last_tweet_for_search_term.tweet_id
    else
      since_id = nil
    end

    @recent_tweets = []
    
    client.search(search_term, result_type: 'recent', since_id: since_id).take(50).reverse_each do |tweet|
       twitter_search_term.tweets.create!(name: tweet.user.name, tweet_id: tweet.id, screen_name: tweet.user.screen_name, 
          photo_url: tweet.user.profile_image_url_https, date: tweet.created_at, message: tweet.text,
          favorite_count: tweet.favorite_count, retweet_count: tweet.retweet_count)
       @recent_tweets << tweet
    end

    return true
  end

end

