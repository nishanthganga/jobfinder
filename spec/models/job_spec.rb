require 'rails_helper'

RSpec.describe Job, type: :model do

	it { is_expected.to validate_presence_of(:title)
										.with_message("Title field can't be blank.")  }
	it { is_expected.to validate_presence_of(:company_name)
										.with_message("Company Name field can't be blank.")  }	
	it { is_expected.to validate_presence_of(:city_id)
										.with_message("City should be selected.")  }
	it { is_expected.to validate_presence_of(:skill_ids)
										.with_message("Select at-least one skill.")  }	
	it { is_expected.to validate_presence_of(:description)
										.with_message("Description can't be blank.")  }
	it { is_expected.to validate_presence_of(:years_experience)
										.with_message("Experience Required (Years) field should be a numeric.")  }
	it { is_expected.to validate_numericality_of(:years_experience)
										.with_message("Experience Required (Years) field should be a numeric.")  }
	it { is_expected.to validate_presence_of(:months_experience)
										.with_message("Experience Required (Months) field should be a numeric.")  }
	it { is_expected.to validate_numericality_of(:months_experience)
										.with_message("Experience Required (Months) field should be a numeric.")  }

	it { is_expected.to have_and_belong_to_many(:skills)}
	it { is_expected.to belong_to(:city)}


  context 'validation tests' do
  	it 'checks the presence of title and company_name' do
  		job = Job.new(city_id: 1, description: "Lorem Ipsum", years_experience: 1, 
  			months_experience: 6)
  		skill = Skill.last
  		job.skill_ids << skill
  		expect(job.save).to eq(false)
  	end

  	it 'checks the presence of skills' do
  		job = Job.new(title: "My title", company_name: "Company Name", city_id: 1, description: "Lorem Ipsum", years_experience: 1, 
  			months_experience: 6)
  		expect(job.save).to eq(false)
  	end


  	context 'checks the experience years and months fields to be in range' do
	    let (:params) { {title: "My title", company_name: "Company Name", city_id: 1, description: "Lorem Ipsum"} }
	    before(:each) do
	      @job = Job.new(params)
	      skill = Skill.last
	  	  @job.skill_ids << skill
	    end

	    it 'checks year field to be in range' do
	      @job.months_experience = 11
	      @job.years_experience = 30
	      expect(@job.save).to eq(false)
	    end

	    it 'checks month field to be in range' do
	      @job.months_experience = 12
	      @job.years_experience = 25
	      expect(@job.save).to eq(false)
	    end

	    it 'accepts when both month and year fields are valid' do
	      @job.months_experience = 11
	      @job.years_experience = 25
	      expect(@job.save).to eq(true)
	    end

    end

  	it 'all valid inputs' do
  		job = Job.new(title: "My title", company_name: "Company Name", city_id: 1, description: "Lorem Ipsum", years_experience: 3, 
  			months_experience: 11)
  		skill = Skill.last
  		job.skill_ids << skill
  		expect(job.save).to eq(true)
  	end

  end


end
