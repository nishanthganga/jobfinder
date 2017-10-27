class TwitterJobsController < ApplicationController
	def rails
		term 	= TwitterSearchTerm.find_by_skill_id(Skill.find_by_programming_platform("Ruby on Rails").id).term
    	@tweets = DataFromExternalSource.from_twitter term
	end

	def react
	end

	def javascript
	end

	def python
	end

	def node
	end

	def angular
	end

	def anroid
	end

	def ios
	end

end
