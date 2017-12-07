require 'rails_helper'

RSpec.feature "Jobs Features", type: :feature do
  
  context 'Job related Pages' do 
    
    scenario "ensures the root path" do
      visit root_path
      expect(page).to have_content("Search jobs in your favorite platform")
    end

    scenario "ensures Jobs on Twitter Page" do 
      visit jobs_on_twitter_path
      expect(page).to have_selector("div", class: "jobs-on-twitter-list")
      expect(page).to have_selector("div", id: "tweets")
    end


    # Tests before using Devise: 

    scenario "ensures authentication for New Jobs page" do

      visit jobs_new_path
      expect(page).to have_content("LOGIN")
      
    end 
    
    scenario "ensures Jobs New page's content" do

      admin = FactoryBot.create(:admin)
      login_as(admin, :scope => :admin)

      visit jobs_new_path

      expect(page).to have_content("Title")
      expect(page).to have_content("Company Name")
      expect(page).to have_content("City")
      expect(page).to have_content("Required Skills")
      expect(page).to have_content("Experience Required (Years)")
      expect(page).to have_content("Experience Required (Months)")
      expect(page).to have_content("Description")
    end 

    scenario "ensures to raise error if mandatory fields of the form are not filled" do 

      admin = FactoryBot.create(:admin)
      login_as(admin, :scope => :admin)

      visit jobs_new_path

      within("form") do
        fill_in 'Title', with: 'Title'
        fill_in 'Company Name', with: 'Company Name'
        fill_in 'Experience Required (Years)', with: '4'
        fill_in 'Experience Required (Months)', with: '1'
        fill_in 'Job Description', with: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
      end
      click_button 'Add Job'
      expect(page).to have_content 'Select at-least one skill.'

    end


  end

  # PhantomJS didn't support my Ubuntu system.

  # context 'Search Features' do
  #   scenario "should be happy path" do
  #     visit root_path
  #     within("form") do
  #       fill_in "input", with: 'john'
  #     end
  #     click_button 'button'
  #     expect(page).to have_content 'User was successfully created.'
  #   end
  # end

end
