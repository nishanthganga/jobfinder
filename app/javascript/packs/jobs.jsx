import React from 'react';
import ReactDOM from 'react-dom';
import JobsSearchBar from './jobs_search_bar';
import JobsList from './jobs_list';
import JobDescription from './job_description';

class Jobs extends React.Component{

	constructor(){
		super()
		this.state = {
			programming_platform: "Ruby on Rails", 
			jobs: null
		}
	}

	render() {
		return (
			<div className="content-area blog-page search-jobs-container">
		        <div className="container">
		          <div className="row job-container">
		            <div className="blog-asside-right col-md-4 search-jobs-div">
		              <div className="panel panel-default sidebar-menu wow fadeInRight animated">
		                <div className="panel-heading">
		                  <h3 className="panel-title">Search Jobs</h3>
		                </div>
		                
		                <JobsSearchBar />	
		                <JobsList />

		              </div>
		            </div>
		            
		            <JobDescription />

		          </div>
		        </div>
      		</div>
		);
	}

}

// document.addEventListener('DOMContentLoaded', () => {
document.addEventListener('turbolinks:load', function() {
	ReactDOM.render(<Jobs />, document.querySelector('.job-container'));
})



