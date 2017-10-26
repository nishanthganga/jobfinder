module DataFromExternalSource
  def self.from_twitter search_term
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

    since_id = nil #get the id of the last record 
    @recent_tweets = []
    client.search(search_term, result_type: 'recent', since_id: since_id).take(6).collect do |tweet|
       @recent_tweets << tweet
    end

    return @recent_tweets

  end


end


# [#<Twitter::Tweet id=923450898478645248>, #<Twitter::Tweet id=923430523732606977>, #<Twitter::Tweet id=923430522491101184>, #<Twitter::Tweet id=923430520972746753>, #<Twitter::Tweet id=923430519823409153>, #<Twitter::Tweet id=923430518560919552>]
# [#<Twitter::Tweet id=923450898478645248>, #<Twitter::Tweet id=923430523732606977>]
