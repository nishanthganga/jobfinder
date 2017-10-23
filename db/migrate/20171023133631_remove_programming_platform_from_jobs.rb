class RemoveProgrammingPlatformFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :programming_platform, :string
  end
end
