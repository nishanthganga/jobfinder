class TwitterJobsController < ApplicationController
	def rails
		#term 	= TwitterSearchTerm.find_by_skill_id(Skill.find_by_programming_platform("Ruby on Rails").id).term
    	# @tweets = DataFromExternalSource.from_twitter term
    	@tweets = Tweet.all.limit(40).order("id DESC").paginate(page: params[:page], per_page: 5)
    	render 'jobs/on_twitter'
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
