class JobsController < ApplicationController
  before_action :set_jobs, only: [:search, :dynamic_search]
  
  def home
    @page_title = "Home"
  end

  def new
    @page_title = "Add New Job Post"
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to jobs_new_path, notice: 'Job has been updated!' }
      else
        format.html { render :new }
      end
  end

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

  def job_params
    params.require(:job).permit(:title, :company_name, :city_id, :years_experience, :months_experience, :description, skill_ids: [:id, :programming_platform])
  end
  
end