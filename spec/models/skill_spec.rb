require 'rails_helper'

RSpec.describe Skill, type: :model do

  context 'validations for associations' do
  	it { is_expected.to have_and_belong_to_many(:jobs)}
  	it { is_expected.to have_many(:twitter_search_terms)}
  end		

  context 'validates scopes' do

	it 'should return result in string format' do
  		returned_string = Skill.all_as_json
    	expect(JSON.parse(returned_string)).to be_truthy
  	end

  end
  

end
