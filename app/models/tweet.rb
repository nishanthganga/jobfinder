class Tweet < ApplicationRecord
  belongs_to :twitter_search_term

  scope	:minutes_since_last_fetch, -> (last_fetch_time) {
  	now = Time.now
  	difference_in_minutes = ( (now - last_fetch_time) / 60 ).to_i
  } 

end
