# JobFinder Web Application

## Description: 

* This web application is built to show how React JS (using 'webpacker') can be used in a Rails 5 applications. It is a simple job searching application where users can search for jobs dynamically. 

## Demo: 


## Key Features: 

* Autosuggestion of technologies in the Home Page. (uses [react-autosuggest](https://github.com/moroshko/react-autosuggest))
* Dynamically search for jobs in the Search Page. (uses React JS)
* Search jobs on twitter inside the application. (Uses 'twitter' gem). 
* Site Admin can add jobs (Admin credentials are given in the admin login page in the demo app)
* Basic REST API to list and show jobs.
  Example links: 
  GET: http://localhost:3000/api/v1/jobs
  GET: http://localhost:3000/api/v1/jobs/1
  GET: http://localhost:3000/api/v1/jobs_api
You can make calls using the [Postman chrome app](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en)
* Code is tested with 98% coverage. Tools used: rspec-rails, capybara, selenium-webdriver, shoulda-matchers, factory_bot_rails and simplecov 
* Views are written in Haml


## Theme Credits:

[Garo Estate](https://technext.github.io/garo-estate/)