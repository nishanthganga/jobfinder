require 'rails_helper'

RSpec.describe TwitterSearchTerm, type: :model do
  
  context 'validations for associations' do	
  	it { is_expected.to belong_to(:skill)}
  	it { is_expected.to have_many(:tweets)}
  end
  

end
