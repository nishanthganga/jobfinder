class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :years_experience, :months_experience, :description, :skills, :city
  has_many :skills
  belongs_to :city

  def skills
    object.skills.map do |skill|
       skill.programming_platform
    end
  end

  def city
  	object.city.name
  end


end
