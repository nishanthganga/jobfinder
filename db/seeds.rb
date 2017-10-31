# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create!(name: "Bangalore")
City.create!(name: "Pune")
City.create!(name: "Chennai")
City.create!(name: "Mumbai")
City.create!(name: "New Delhi")
City.create!(name: "Hyderabad")

Skill.create!(programming_platform: "Ruby")
Skill.create!(programming_platform: "Ruby on Rails")
Skill.create!(programming_platform: "React JS")
Skill.create!(programming_platform: "JavaScript")
Skill.create!(programming_platform: "Python")
Skill.create!(programming_platform: "Node JS")
Skill.create!(programming_platform: "Angular JS")
Skill.create!(programming_platform: "Android")
Skill.create!(programming_platform: "iOS")


TwitterSearchTerm.create!(term: "Ruby jobs", skill_id: Skill.find_by_programming_platform("Ruby").id)
TwitterSearchTerm.create!(term: "Ruby on Rails jobs", skill_id: Skill.find_by_programming_platform("Ruby on Rails").id)
TwitterSearchTerm.create!(term: "React JS jobs", skill_id: Skill.find_by_programming_platform("React JS").id)
TwitterSearchTerm.create!(term: "JavaScript jobs", skill_id: Skill.find_by_programming_platform("JavaScript").id)
TwitterSearchTerm.create!(term: "Python jobs", skill_id: Skill.find_by_programming_platform("Python").id)
TwitterSearchTerm.create!(term: "Node JS jobs", skill_id: Skill.find_by_programming_platform("Node JS").id)
TwitterSearchTerm.create!(term: "Angular JS jobs", skill_id: Skill.find_by_programming_platform("Angular JS").id)
TwitterSearchTerm.create!(term: "Android jobs", skill_id: Skill.find_by_programming_platform("Android").id)
TwitterSearchTerm.create!(term: "iOS Jobs", skill_id: Skill.find_by_programming_platform("iOS").id)