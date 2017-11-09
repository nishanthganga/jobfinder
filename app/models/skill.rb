class Skill < ApplicationRecord
	has_and_belongs_to_many :jobs
	has_many :twitter_search_terms

  scope :all_as_json, -> { 
  	skills_array = []
  	all_skills = pluck(:programming_platform)
  	all_skills.each do |skill|
  		hash = {name: skill}
  		skills_array.push(hash)
  	end
  	return skills_array.to_json
  }



end
