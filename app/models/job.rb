class Job < ApplicationRecord
	has_and_belongs_to_many :skills
	belongs_to :city

	validates :title, presence: { message: "Title field can't be blank." }
  	validates :company_name, presence: { message: "Company Name field can't be blank." }
  	validates :city_id, presence: { message: "City should be selected." }
  	validates :skill_ids, presence: { message: "Select at-least one skill." }
  	validates :description, presence: { message: "Description can't be blank." }
	validates :years_experience, numericality: { :minimum => 0, :less_than_or_equal_to => 25, message: "Experience Required (Years) field should be a numeric."}, presence: { message: "Experience Required (Years) field should be a numeric." }
	validates :months_experience, numericality: { :minimum => 0, :less_than_or_equal_to => 11, message: "Experience Required (Months) field should be a numeric."}, presence: { message: "Experience Required (Months) field should be a numeric." }

end