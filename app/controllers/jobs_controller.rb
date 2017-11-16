class JobsController < ApplicationController
  before_action :set_jobs, only: [:search, :dynamic_search]
  before_action :authenticate_admin!, only: [:new, :create]
  
  def home
    @page_title = "Home"
    @all_skills = Skill.all_as_json
  end

  def new
    @page_title = "Add New Job Post"
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to jobs_new_path, notice: 'Job added successfully!' }
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
    params[:id] ? @id = params[:id] : @id = 1
    twitter_search_term  = TwitterSearchTerm.friendly.find(@id)

    data_fetched  = DataFromExternalSource.from_twitter twitter_search_term.term
    unless data_fetched
      flash[:alert] = "Tweets are fetched once in half an hour."
    end
    
    @tweets       = Tweet.where(twitter_search_term_id: twitter_search_term.id).order("id DESC").paginate(page: params[:page], per_page: 10)
    @search_terms = TwitterSearchTerm.pluck(:slug, :term)
    @page_title   = "Jobs on Twitter"
  end

  private

  def set_jobs
    if params[:query] && (params[:query] != "")
      @query  = params[:query]
      @jobs   = Job.joins(:skills, :city).where("lower(skills.programming_platform) LIKE ?", "%#{@query.downcase}%").order("updated_at DESC").distinct.as_json(include: { skills: { only: [:programming_platform] }, city: { only: [:name] } })
    else
      @query  = []
      @jobs   = []
    end
  end

  def job_params
    params.require(:job).permit(:title, :company_name, :city_id, :years_experience, :months_experience, :description, :skill_ids => [])
  end

  
end