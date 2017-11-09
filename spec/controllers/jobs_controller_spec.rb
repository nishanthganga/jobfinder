require 'rails_helper'

RSpec.describe JobsController, type: :controller do

context 'Check Pages' do 
	
	it 'New Page' do 
		get :new 
		expect(response).to be_success
	end

	it 'Home Page' do 
		get :home 
		expect(response).to be_success
	end

	it 'Search Page' do
		get :search 
		expect(response).to be_success
	end

	it 'Jobs on Twitter Page' do
		get :on_twitter, params: { id: "1" }
		expect(response).to be_success
	end


end




end
