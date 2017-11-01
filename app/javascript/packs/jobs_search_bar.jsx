import React from 'react'
import PropTypes from 'prop-types'

class JobsSearchBar extends React.Component{

	constructor(props) {
		super(props);
		this.state = {term: this.props.search_term};
	}
	
	render() {
		return (
			<div className="form-group">
			<input id="job_search" className="form-control" 
				value={this.state.term || ""}
				placeholder="e.g. Ruby on Rails"
				onChange = { event => this.onInputChange(event.target.value) } />
			</div>
		);
	}

	onInputChange(term) {
		this.setState({term});
	    this.props.onSearchTermChange(term);
  	}

}

export default JobsSearchBar;