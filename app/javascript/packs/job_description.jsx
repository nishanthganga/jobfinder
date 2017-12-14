import React from 'react'


const JobDescription = ({job}) => {
  if (!job) {
    return (
    <div className="empty-search-message">
      <h3> Search for jobs in the search box.  </h3>
    </div>
  );

  }

	const skills_array = [];
	job.skills.map((skill) => {
	 skills_array.push(skill.programming_platform)
	})
	const job_skills = skills_array.join(", ")
	
	let work_experience = ""
	if (job.years_experience == 0)
	{
		work_experience = job.months_experience + " months";
	}
	else if (job.months_experience == 0)
	{
		work_experience = job.years_experience + " years";
	}
	else
	{
		work_experience = job.years_experience+ " years" + " and " + job.years_experience + " months";
	}	



  return (

    <div className="blog-lst col-md-8 job-desc-div">

        <div className="section job-desc-section">
          <div className="job-description-title">
            <span>Job Title</span>
          </div>
          <div className="s-property-content">
            <p>{job.title}</p>
          </div>
        </div>

        <div className="section job-desc-section">
          <div className="job-description-title">
            <span>Skills Required</span>
          </div>
          <div className="s-property-content">
				<p>{job_skills}</p>
          </div>
        </div>

        <div className="section job-desc-section">
          <div className="job-description-title">
            <span>Experience</span>
          </div>
          <div className="s-property-content">
          	<p>{work_experience}</p>
          </div>
        </div>
        
        <div className="section job-desc-section">
          <div className="job-description-title">
            <span>Job Description</span>
          </div>
          <div className="s-property-content desc-text" dangerouslySetInnerHTML={{__html: job.description}} />
        </div>
	</div>
  );
};


export default JobDescription;