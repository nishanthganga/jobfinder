require 'rails_helper'

RSpec.describe City, type: :model do

   context 'validations for associations' do

   	it { is_expected.to have_many(:jobs)}

   end

end
