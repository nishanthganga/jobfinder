class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Devise

  def after_sign_in_path_for(resource)
   jobs_new_path
  end

end