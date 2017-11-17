module MyDeviseHooks
  extend ActiveSupport::Concern

  def after_sign_in_path_for(resource)
   jobs_new_path
  end
  
end