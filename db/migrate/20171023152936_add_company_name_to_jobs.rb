class AddCompanyNameToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :company_name, :string
  end
end
