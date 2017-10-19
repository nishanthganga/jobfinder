class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :programming_platform
      t.integer :years_experience
      t.integer :months_experience
      t.string :description

      t.timestamps
    end
  end
end
