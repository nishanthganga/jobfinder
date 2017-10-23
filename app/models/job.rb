class Job < ApplicationRecord
	has_and_belongs_to_many :skills
	belongs_to :city
end


# j.skills.pluck(:programming_platform).join(", ")

# job.skills.map((skill) => {
#     console.log(skill.programming_platform)
# })

# skills_array = []
# job.skills.map((skill) => {
#     skills_array.push(skill.programming_platform)
# })

# skills_array.join()





# job = Object.create({"id":"3",
# "title":"Junior Engineer: RoR",
# "programming_platform":"Ruby on Rails",
# "years_experience": "0" ,
# "months_experience":"1" ,
# "description":"Some lazy description",
# "skills":[{"programming_platform":"Ruby"},
# {"programming_platform":"React JS"}]})


# job.skills.map(function(skill) {
#    skill.programming_platform;
# });