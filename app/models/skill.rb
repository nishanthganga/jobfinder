class Skill < ApplicationRecord
	has_and_belongs_to_many :jobs
	has_many :twitter_search_terms

  scope :all_as_json, -> { 
  	skills_in_json = []
  	all_skills = pluck(:programming_platform)
  	all_skills.each do |skill|
  		hash = {name: skill}
  		skills_in_json.push(hash)
  	end
  	return skills_in_json
  }



end
