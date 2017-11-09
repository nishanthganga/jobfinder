module Api
	module V1
		class JobsController < ApplicationController
			def index
		    	jobs = Job.order('created_at DESC');
		    	render json: jobs
		    end

		    def show
		    	job = Job.find(params[:id])
		    	render json: job
		    end

		end
	end
end