import React from 'react';
import ReactDOM from 'react-dom';
import Autosuggest from 'react-autosuggest';

const skills_node = document.getElementById('all_skills_as_json');
const languages = JSON.parse(skills_node.getAttribute('data'));

// https://developer.mozilla.org/en/docs/Web/JavaScript/Guide/Regular_Expressions#Using_Special_Characters
function escapeRegexCharacters(str) {
  return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}

function getSuggestions(value) {
  const escapedValue = escapeRegexCharacters(value.trim());
  
  if (escapedValue === '') {
    return [];
  }

  const regex = new RegExp('^' + escapedValue, 'i');

  return languages.filter(language => regex.test(language.name));
}

function getSuggestionValue(suggestion) {
  return suggestion.name;
}

function renderSuggestion(suggestion) {
  return (
    <span>{suggestion.name}</span>
  );
}

class MyAutosuggest extends React.Component {
  constructor() {
    super();

    this.state = {
      value: '',
      suggestions: []
    };    
  }

  onChange = (_, { newValue }) => {
    const { id, onChange } = this.props;
    
    this.setState({
      value: newValue
    });
    
    onChange(id, newValue);
  };
  
  onSuggestionsFetchRequested = ({ value }) => {
    this.setState({
      suggestions: getSuggestions(value)
    });
  };

  onSuggestionsClearRequested = () => {
    this.setState({
      suggestions: []
    });
  };

  render() {
    const { id, placeholder, name } = this.props;
    const { value, suggestions } = this.state;
    const inputProps = {
      placeholder,
      name,
      value,
      onChange: this.onChange
    };
    
    return (
      <Autosuggest 
        id={id}
        suggestions={suggestions}
        onSuggestionsFetchRequested={this.onSuggestionsFetchRequested}
        onSuggestionsClearRequested={this.onSuggestionsClearRequested}
        getSuggestionValue={getSuggestionValue}
        renderSuggestion={renderSuggestion}
        inputProps={inputProps} />
    );
  }
}

class App extends React.Component {
  onChange(id, newValue) {
    console.log(`${id} changed to ${newValue}`);
  }
  
  render() {
    return (
      <div>
        <MyAutosuggest
          id="type-c"
          name="query"
          placeholder="Programming Platform e.g. Ruby"
          className="form_control"
          onChange={this.onChange}/>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('auto_suggestion'));
