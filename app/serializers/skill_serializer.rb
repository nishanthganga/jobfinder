class SkillSerializer < ActiveModel::Serializer
  attributes :programming_platform
  belongs_to :jobs
end
