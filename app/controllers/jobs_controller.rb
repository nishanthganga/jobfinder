class JobsController < ApplicationController
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

  def on_twitter
    @page_title = "Jobs on Twitter"
  end
  
end
