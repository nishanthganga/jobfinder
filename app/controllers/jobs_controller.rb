class JobsController < ApplicationController
  before_action :set_jobs, only: [:search, :dynamic_search]
  
  def home
    @page_title = "Home"
  end

  def new
    @page_title = "Add New Job Post"
  end

  def create
  end

  def search
    @page_title = "Search"
  end

  def dynamic_search
    render json: @jobs
  end

  def on_twitter
    @page_title = "Jobs on Twitter"
  end

  private
  
  def set_jobs
    @query = params[:query]
    @jobs = Job.joins(:skills).where("skills.programming_platform LIKE ?", "%#{@query}%").distinct.as_json(include: { skills: { only: [:programming_platform] } })
  end
  
end