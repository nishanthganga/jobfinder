import React from 'react'
import JobListItem from './job_list_item'

const JobsList = (props) => {
  const jobListItems = props.jobs.map((job) => {
  	const listClassName = props.selectedJob === job ? "active list-group-item" : "list-group-item"
    return <JobListItem
      job={job}
      onJobSelect={props.onJobSelect}
      listClassName={listClassName}
      key={job.id} />;
});

  return (
	<div className="job-list">
		<div className="bs-example">
		    <ul className="list-group">
		      {jobListItems}
		    </ul>
		</div>
	</div>
  );
};

export default JobsList;