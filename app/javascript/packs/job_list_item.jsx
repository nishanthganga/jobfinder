import React from 'react'

const JobListItem = ({job, onJobSelect, listClassName}) => {
  return (
		<li onClick={() => onJobSelect(job)} className={listClassName}>
		  <span className="job-list-title bold">{job.title}</span>
		  <span className="job-list-company-name"> Google </span>
		  <span className="job-list-city-name">Bangalore</span>
		</li>
  );
};

export default JobListItem;