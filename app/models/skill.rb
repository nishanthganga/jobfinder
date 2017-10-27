class Skill < ApplicationRecord
	has_and_belongs_to_many :jobs
	has_many :twitter_search_terms
end
