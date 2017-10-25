class TwitterJobsController < ApplicationController
	def rails
    	@tweets = DataFromExternalSource.from_twitter "RoR jobs"
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
