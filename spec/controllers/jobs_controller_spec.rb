require 'rails_helper'

RSpec.describe JobsController, type: :controller do

context 'Check Pages' do 
	
	it 'returns success response for the Home Page' do 
		get :home 
		expect(response).to be_success
	end

	it 'returns success response for the Search Page' do
		get :search 
		expect(response).to be_success
	end

	it 'returns success response for the Jobs on Twitter Page' do
		get :on_twitter, params: { id: "1" }
		expect(response).to be_success
	end


end


end
