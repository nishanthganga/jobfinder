import React from 'react'
class JobListItem extends React.Component{

	render() {
		return(
			<li className="list-group-item">
			  <span className="job-list-title bold">Ruby on Rails Developer</span>
			  <span className="job-list-company-name">Google</span>
			  <span className="job-list-city-name">Bangalore</span>
			</li>
		);
	}

}

export default JobListItem;