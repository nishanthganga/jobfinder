require 'rails_helper'

RSpec.feature "Jobs Features", type: :feature do
  
  context 'checks Job related Pages' do 
    
    scenario "checks root path" do
      visit root_path
      expect(page).to have_content("Search jobs in your favorite platform")
    end

    scenario "visit Jobs on Twitter Page" do 
      visit jobs_on_twitter_path
      expect(page).to have_selector("div", class: "jobs-on-twitter-list")
      expect(page).to have_selector("div", id: "tweets")
    end

  end

  context 'Search Features' do
    scenario "should be happy path" do
      visit root_path
      within("form") do
        fill_in "input", with: 'john'
      end
      click_button 'button'
      expect(page).to have_content 'User was successfully created.'
    end
  end

end