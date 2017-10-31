import React from 'react';
import ReactDOM from 'react-dom';
import JobsSearchBar from './jobs_search_bar';
import JobsList from './jobs_list';
import JobDescription from './job_description';
import _ from 'lodash';

class Jobs extends React.Component{

	constructor(props){
		super(props)
		this.state = {
			search_term: this.props.search_term, 
			jobs: this.props.all_jobs, 
			selectedJob: this.props.all_jobs[0]
		}
	}

	jobSearch(term)
	{
	    $.post('/jobs/dynamic_search',
            {query: term})
          .done((data) => {
          	console.log(data);
            this.setState({
	        	jobs: data 
	      	});
        });
	}

	render() {
		const jobSearch = _.debounce((term) => {this.jobSearch(term)}, 300);
		
		return (
			<div className="content-area blog-page search-jobs-container">
		        <div className="container">
		          <div className="row job-container">
		            <div className="blog-asside-right col-md-4 search-jobs-div">
		              <div className="panel panel-default sidebar-menu wow fadeInRight animated">
		                <div className="panel-heading">
		                  <h3 className="panel-title">Search Jobs</h3>
		                </div>
		                
		                <JobsSearchBar 
		                	onSearchTermChange={jobSearch} 
		                	search_term={this.state.search_term} />	
		                <JobsList 
		                	jobs={this.state.jobs}
		                	selectedJob={this.state.selectedJob}
		                	onJobSelect={ (selectedJob) => this.setState({selectedJob}) }/>

		              </div>
		            </div>
		            
		            <JobDescription 
		            job={this.state.selectedJob}/>

		          </div>
		        </div>
      		</div>
		);
	}

}

// document.addEventListener('turbolinks:load', function() {
document.addEventListener('DOMContentLoaded', () => {

	const job_node = document.getElementById('all_jobs');
  	const all_jobs = JSON.parse(job_node.getAttribute('data'));

  	const search_term_node = document.getElementById('search_term');
  	const search_term = JSON.parse(search_term_node.getAttribute('data'));


	ReactDOM.render(<Jobs all_jobs={all_jobs} search_term={search_term} />, document.querySelector('.job-container'));

})