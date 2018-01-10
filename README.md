# JobFinder Web Application

#### Project started on: Oct 19, 2017
#### Pushed to Github on: 14th Dec, 2017

## Description: 

* This web application shows how React JS (using 'webpacker') can be used in Rails 5.1 applications. It is a simple job searching app where users can search for jobs dynamically. 

## Demo: 

https://rails-job-finder.herokuapp.com

## Key Features: 

* Autosuggestion of technologies in the Home Page. (uses [react-autosuggest](https://github.com/moroshko/react-autosuggest))
* Dynamically search for jobs in the Search Page. (uses React JS)
* Search jobs on twitter inside the application. (Uses 'twitter' gem). 
* Site Admin can add jobs (Admin credentials are given in the admin login page in the demo app)
* Basic REST API to list and show jobs.  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; links:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GET: https://rails-job-finder.herokuapp.com/api/v1/jobs

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GET: https://rails-job-finder.herokuapp.com/api/v1/jobs/1

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You can make calls using the [Postman chrome app](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en)

* Code is tested with 98% coverage. Tools used: rspec-rails, capybara, selenium-webdriver, shoulda-matchers, factory_bot_rails and simplecov 
* Views are written in Haml


## Theme Credits:

[Garo Estate](https://technext.github.io/garo-estate/)

