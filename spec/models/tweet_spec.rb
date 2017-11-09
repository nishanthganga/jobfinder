require 'rails_helper'

RSpec.describe Tweet, type: :model do

  context 'validations for associations' do	
  	it { is_expected.to belong_to(:twitter_search_term)}
  end

  context 'validates scopes' do

	  it 'should return time difference' do
	  	half_an_hour_ago  = 30.minutes.ago
	  	time_in_minutes   = Tweet.minutes_since_last_fetch(half_an_hour_ago)
	  	expect(time_in_minutes).to eq(30) 
	  end  

  end


end
