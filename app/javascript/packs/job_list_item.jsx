import React from 'react'

const JobListItem = ({job, onJobSelect, listClassName}) => {
  return (
		<li onClick={() => onJobSelect(job)} className={listClassName}>
		  <span className="job-list-title bold">{job.title}</span>
		  <span className="job-list-company-name"> {job.company_name} </span>
		  <span className="job-list-city-name">{job.city.name}</span>
		</li>
  );
};

export default JobListItem;