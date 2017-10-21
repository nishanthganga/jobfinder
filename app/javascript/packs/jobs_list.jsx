import React from 'react'
import JobListItem from './job_list_item'
class JobsList extends React.Component{

	render() {
		return (
		<div className="job-list">
	        <div className="bs-example">
	          <ul className="list-group">
	            <JobListItem />
	            <JobListItem />
	            <JobListItem />
	            <JobListItem />
	          </ul>
	        </div>
	    </div>
		);
	}

}

export default JobsList;