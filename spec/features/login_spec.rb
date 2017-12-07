require 'rails_helper'

RSpec.feature "Login Features", type: :feature do

	context 'Login Page' do
		scenario 'should pass the authentication' do 
			visit '/login'
			within("form") do
		        fill_in 'Email', with: 'developer.nishanth@gmail.com'
		        fill_in 'Password', with: 'password'
            end

            click_button 'Log In'
      		expect(page).to have_content 'ADD A NEW JOB POST'
		end
	end


end